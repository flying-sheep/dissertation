Enabling technologies for visualization and analysis of single-cell RNA-Seq data
================================================================================

Setup
-----

- `zotero-better-bibtex`’ [auto export](https://retorque.re/zotero-better-bibtex/exporting/auto/):

  - Path is `lib/library.bib`
  - Turn off title casing in “Better Bibtex” → “Export” → “Misc”

- Dependencies

  ```bash
  python3 -m venv .venv
  source .venv/bin/activate
  python -m pip install -U pip wheel
  python -m pip install -r requirements.txt
  # TODO: something for R
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
snakemake -j4 prd_dissertation.pdf
```

Resources
---------

- https://www.gzw.wzw.tum.de/abschluss-der-promotion/

Local Resources
- file:///home/angerer/Dropbox/Arbeit/lebenslauf/cv.ctx
- file:///home/angerer/Dropbox/Uni/Masterarbeit/thesis/main.ctx
- file:///home/angerer/Analysis/destiny-2.0-poster/meins.ctx

Overleaf Resources
- https://www.overleaf.com/project/5b7e8d7626d7b1266a758000
- https://www.overleaf.com/project/5b91217ede341c671df03c97

Symbols
- ∀∃∄
- ∈∉
- ≤≥≙≠
- ⋀⋁∧∨
- ∩∪
- ⊂⊄⊆⊈
- ⊃⊅⊇⊉
- ∑∏∫∞
- ⇒⇔
- ∎
- ⌀≡∑ⁿe∕n
- ∅≡{}
- ε
