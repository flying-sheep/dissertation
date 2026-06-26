Frameworks of interpretation: stabilizing scRNA-Seq data processing for discovery
=================================================================================

Setup
-----

- `zotero-better-bibtex`’ [auto export](https://retorque.re/zotero-better-bibtex/exporting/auto/):

  - Path is `bib/library.bib`
  - Turn off title casing in “Better Bibtex” → “Export” → “Misc”

- Dependencies

  ```bash
  python -m virtualenv --no-seed -p 3.12 .venv
  source .venv/bin/activate  # or: overlay activate .venv/bin/activate.nu
  uv pip install -r requirements.txt
  R -q -s -e 'chooseCRANmirror(ind=0); install.packages(readLines("requirements-r.txt"))'
  ```

- Git checks and filters

  ```bash
  pre-commit install
  nbstripout --install --attributes .gitattributes
  ```

Build
-----

Build in docker:

```bash
docker build -t dissertation .
docker run -it -v "$PWD:/home/me" dissertation
```

Build locally (needs all kinds of Python and R stuff)

```bash
# once: python -m ipykernel install --user --name dissertation --display-name='Python (diss)'
snakemake -j4 prd_dissertation.pdf
```
