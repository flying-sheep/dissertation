FROM debian:trixie AS dist

RUN apt update -y
RUN apt install -y wget

# Nonfree fonts https://www.tug.org/~kotucha/getnonfreefonts/getfont.pl
# ftpfonts=(eurofont)
# httpfonts=(arial-urw classico dayroman gandhi garamond garamondx lettergothic literaturnaya luximono vntex-nonfree webomints)
WORKDIR /usr/share/fonts/opentype/luximono
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-Bold.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-Oblique.otf
RUN wget https://www.ghostscript.com/~tor/stuff/fonts/luximono/LuxiMono-BoldOblique.otf

#RUN mkdir -p /usr/share/texmf-fonts && for dir in opentype truetype type1; do mv "/usr/share/tex/texmf/fonts/$dir/" /usr/share/texmf-fonts/; done

FROM debian:trixie

RUN apt update

# Modules & Fonts
RUN apt install -y rsync bibtool entr context context-modules
COPY --from=dist /usr/share/fonts/opentype/luximono /usr/share/fonts/opentype/luximono
RUN mtxrun --generate && context --make en && mtxrun --script fonts --reload
#\
    #&& find "$TEXMFCACHE" -type d -exec chmod 777 {} \; \
    #&& find "$TEXMFCACHE" -type f -exec chmod 666 {} \;

# Python
ENV PYTHONUNBUFFERED=1
RUN apt install -y python3 python3-pip wget git libhdf5-dev python3-wheel pkg-config
RUN pip install --break-system-packages uv
# datrie doesn’t build without these flags
RUN CFLAGS="-Wno-error=incompatible-pointer-types" CXXFLAGS="-Wno-error=incompatible-pointer-types" \
    uv pip install --system --break-system-packages \
    snakemake scanpy[leiden] scvelo ipykernel
# R
RUN apt install -y r-base libssl-dev libcurl4-openssl-dev libfreetype6-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libpng-dev libtiff5-dev libjpeg-dev libxml2-dev
RUN echo 'local({r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"; options(repos=r)})' >/usr/lib/R/etc/Rprofile.site
RUN R -s -q --no-save -e 'install.packages("BiocManager"); BiocManager::install(version = "3.19")'
RUN R -s -q --no-save -e 'options(warn=2); install.packages("https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.1.tar.gz", repos=NULL, type="source")'
RUN R -s -q --no-save -e 'options(warn=2); BiocManager::install(c("tidyverse", "destiny"))'
# TODO: move up
RUN apt install -y libgit2-dev
RUN R -s -q --no-save -e 'options(warn=2); install.packages(c("devtools", "IRkernel"))'

# Kernels
RUN python3 -m ipykernel install --name dissertation --display-name='Python (diss)'
RUN R -s -q --no-save -e 'IRkernel::installspec(user = FALSE)'

# Python Deps
COPY requirements.txt ./
RUN uv pip install --system --break-system-packages -r requirements.txt
# R Deps
COPY requirements-r.txt ./
# TODO: warn again here: options(warn=2)
RUN R -s -q --no-save -e 'BiocManager::install(readLines(con = "requirements-r.txt", n = -1))'
RUN R -s -q --no-save -e 'options(warn=2); devtools::install_github("theislab/destiny", upgrade = FALSE)'

# TODO: move up
RUN apt install -y texlive-pictures

# Rest
RUN useradd -ms /bin/bash me
WORKDIR /home/me
USER me
#CMD [ "snakemake", "-j", "4", "prd_dissertation.pdf" ]
CMD snakemake --detailed-summary -j1 | cut -f 6 | tail -n +2 | tr ',' '\n' | entr snakemake -j 4 prd_dissertation.pdf
