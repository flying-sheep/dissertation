%bibtool -r biblatex -r bibtool.rsc -i ./library.bib
%http://www.gerd-neugebauer.de/software/TeX/BibTool/bibtool.pdf
output.file = "prd_dissertation.bib"
check.double = on
print.line.length = 1000000
print.deleted.entries = off
sort = on
sort.order {* = abstract # author # doi # isbn # issn # journal # journaltitle # keywords # language # langid # number # pages # publisher # title # url # volume # date # year # month # day}
delete.field { file url urldate eprint eprinttype }
rewrite.rule {"\\textendash[ ]?" "--"}
rewrite.rule {"\\textemdash[ ]?" "---"}
