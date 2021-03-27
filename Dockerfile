FROM debian:buster AS build

ARG platform

ENV PATH=$PATH:/usr/share/tex/texmf-linux-64/bin:/usr/share/bin

RUN apt update -y
RUN apt install -y rsync wget unzip

WORKDIR /usr/share
RUN wget -O context.zip http://lmtx.pragma-ade.nl/install-lmtx/context-linux-64.zip && unzip context.zip && rm context.zip
RUN wget -O bin/luametatex http://dl.contextgarden.net/build/luametatex/x86_64-linux/luametatex && chmod +x bin/luametatex
RUN ln -sf luametatex bin/mtxrun && ln -sf luametatex bin/context
RUN echo -e 'local selfpath = os.selfpath \n if not arg or not selfpath then \n print("invalid stub") \n os.exit() \n end \n arg[0] = "mtxrun" \n table.insert(arg,1,"mtx-context") \n table.insert(arg,1,"--script") \n dofile(selfpath .. "/" .. "mtxrun.lua") \n' > /usr/share/bin/context.lua
RUN sed -i 's#pdir)#pdir)\n    run("ln -sf %s %s", "/usr/share/bin", binpath)#' /usr/share/bin/mtx-install.lua
RUN mtxrun --script ./bin/mtx-install.lua --update --server="lmtx.contextgarden.net,lmtx.pragma-ade.com,lmtx.pragma-ade.nl" --instance="install-lmtx" --platform="linux-64" --erase --extras=""

# Nonfree fonts https://www.tug.org/~kotucha/getnonfreefonts/getfont.pl
# ftpfonts=(eurofont)
# httpfonts=(arial-urw classico dayroman gandhi garamond garamondx lettergothic literaturnaya luximono vntex-nonfree webomints)
WORKDIR /usr/share/tex/texmf/fonts/opentype/public/luximono
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-Bold.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-Oblique.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-BoldOblique.otf

WORKDIR /

FROM build AS dist

RUN mkdir -p /usr/share/tex/texmf-modules/doc && mv /usr/share/tex/texmf-modules/doc /usr/share/texmf-modules-doc
RUN mv /usr/share/tex/texmf-context/doc /usr/share/texmf-context-doc
RUN mkdir -p /usr/share/texmf-fonts && for dir in opentype truetype type1; do mv "/usr/share/tex/texmf/fonts/$dir/" /usr/share/texmf-fonts/; done
RUN rm -rf /usr/share/tex/texmf-cache/*


FROM debian:buster

ENV CONTEXT_HOME=/usr/share \
    PATH=$PATH:/usr/share/tex/texmf-linux-64/bin:/usr/share/bin \
    TEXMFCACHE=/usr/share/tex/texmf-cache \
    MTX_FONTS_AUTOLOAD=yes

COPY --from=dist /usr/share/bin /usr/share/bin
COPY --from=dist /usr/share/tex /usr/share/tex
COPY --from=dist /usr/share/texmf-fonts/opentype/public/lm /usr/share/tex/texmf/fonts/opentype/public/lm
COPY --from=dist /usr/share/texmf-fonts /usr/share/tex/texmf/fonts

RUN apt update

# Modules & Fonts
RUN apt install -y rsync bibtool entr
RUN rsync -rltv --del rsync://contextgarden.net/minimals/current/modules/ /usr/share/tex/texmf-modules
RUN mtxrun --generate && context --make en && mtxrun --script fonts --reload \
    && find "$TEXMFCACHE" -type d -exec chmod 777 {} \; \
    && find "$TEXMFCACHE" -type f -exec chmod 666 {} \;

# Python
ENV PYTHONUNBUFFERED=1
RUN apt install -y python3 python3-pip wget git libhdf5-103 python3-wheel
RUN pip3 install -U pip
RUN pip3 install snakemake scanpy[leiden] scvelo ipykernel
# R
RUN apt install -y r-base libcurl4-openssl-dev libssl-dev libxml2-dev
RUN echo 'local({r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"; options(repos=r)})' >/usr/lib/R/etc/Rprofile.site
RUN R -s -q --no-save -e 'install.packages("BiocManager"); BiocManager::install(version = "3.8")'
RUN R -s -q --no-save -e 'options(warn=2); install.packages("https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.1.tar.gz", repos=NULL, type="source")'
RUN R -s -q --no-save -e 'options(warn=2); BiocManager::install(c("tidyverse", "destiny"))'
RUN R -s -q --no-save -e 'options(warn=2); install.packages(c("devtools", "IRkernel"))'

# Kernels
RUN python3 -m ipykernel install --name dissertation --display-name='Python (diss)'
RUN R -s -q --no-save -e 'IRkernel::installspec(user = FALSE)'

# Python Deps
COPY requirements.txt ./
RUN pip3 install -U pip
RUN pip3 install -r requirements.txt
# R Deps
COPY requirements-r.txt ./
RUN R -s -q --no-save -e 'options(warn=2); BiocManager::install(readLines(con = "requirements-r.txt", n = -1))'
RUN R -s -q --no-save -e 'options(warn=2); devtools::install_github("theislab/destiny", upgrade = FALSE)'

# Rest
RUN useradd -ms /bin/bash me
WORKDIR /home/me
USER me
#CMD [ "snakemake", "-j", "4", "prd_dissertation.pdf" ]
CMD snakemake --detailed-summary -j1 | cut -f 6 | tail -n +2 | tr ',' '\n' | entr snakemake -j 4 prd_dissertation.pdf
