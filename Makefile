src_files = prd_dissertation.ctx $(wildcard parts/*.ctx)

prd_dissertation.pdf: $(src_files) bib/prd_dissertation.bib
	context --nonstopmode $<

bib/prd_dissertation.bib: bib/library.bib
	cd bib; bibtool -r bibtool.rsc

watch: $(src_files) bib/library.bib
	ls $(src_files) bib/library.bib | entr make
