def harmonize(p):
    return str(p).replace('\\', '/')

PARTS = list(map(harmonize, Path('parts').glob('c_*.mkiv')))
IMGS = list(map(harmonize, [
    *(p.with_suffix('.pdf') for p in Path('imgs').glob('*.ipynb')),
    *Path('imgs').glob('*.tikz'),
    *Path('imgs').glob('*.png'),
    *Path('imgs').glob('*.svg'),
]))


rule context:
    input:
        tex='prd_dissertation.mkiv',
        env='env_dissertation.mkiv',
        prj='project_dissertation.mkiv',
        bib='bib/prd_dissertation.bib',
        parts=PARTS,
        imgs=IMGS,
    output:
        'prd_dissertation.pdf',
    run:
        shell(f'context --nonstopmode --nostatistics --silent=all {input.tex}')

rule bib:
    input:
        bib='bib/library.bib',
        conf='bib/bibtool.rsc',
    output:
        'bib/prd_dissertation.bib',
    run:
        shell(f'cd bib && bibtool -r biblatex -r {Path(input.conf).name}')

rule img:
    input:
        'imgs/{name}.ipynb',
    output:
        'imgs/{name}.pdf',
    run:
        shell(f'cd imgs && jupyter nbconvert --execute --to=script --stdout {Path(input[0]).name}', read=True)
