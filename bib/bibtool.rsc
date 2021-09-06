%bibtool -r biblatex -r bibtool.rsc
%http://www.gerd-neugebauer.de/software/TeX/BibTool/bibtool.pdf
input "library.bib"
output.file = "prd_dissertation.bib"
print.line.length = 1000000
sort = on
sort.order {* = abstract # author # doi # isbn # issn # journal # journaltitle # keywords # language # langid # number # pages # publisher # title # url # volume # date # year # month # day}
delete.field { file }
