src_files = prd_dissertation.ctx env_dissertation.ctx $(wildcard parts/*.ctx) Makefile

prd_dissertation.pdf: $(src_files) bib/prd_dissertation.bib
	context --nonstopmode --nostatistics --silent=all $<

bib/prd_dissertation.bib: bib/library.bib bib/bibtool.rsc
	cd bib; bibtool -r bibtool.rsc

watch: $(src_files) bib/library.bib
	ls $(src_files) bib/library.bib | entr make
