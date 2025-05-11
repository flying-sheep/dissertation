snakemake -j4 -R prd_dissertation.pdf
snakemake --detailed-summary -j1 |
    from tsv |
    where output_file == 'prd_dissertation.pdf' |
    get 'input-file(s)' |
    split row ',' |
    str join (char newline) |
    str replace --all '.pdf' '.ipynb' |
    entr snakemake -j4 -R prd_dissertation.pdf
