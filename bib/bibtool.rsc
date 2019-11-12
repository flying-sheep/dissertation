%bibtool -r bibtool.rsc
%http://www.gerd-neugebauer.de/software/TeX/BibTool/bibtool.pdf
input "library.bib"
output.file = "prd_dissertation.bib"
print.line.length = 1000000
sort = on
delete.field { file }
