src_files = prd_dissertation.mkiv env_dissertation.mkiv $(wildcard parts/*.mkiv) $(patsubst %.ipynb,%.pdf,$(wildcard imgs/*.ipynb)) Makefile

prd_dissertation.pdf: $(src_files) bib/prd_dissertation.bib
	context --nonstopmode --nostatistics --silent=all $<

bib/prd_dissertation.bib: bib/library.bib bib/bibtool.rsc
	cd bib; bibtool -r bibtool.rsc

imgs/%.pdf: imgs/%.ipynb
	cd imgs; jupyter nbconvert --execute --stdout ../$< >/dev/null

watch: $(src_files) bib/library.bib
	ls $(src_files) bib/library.bib | entr make
