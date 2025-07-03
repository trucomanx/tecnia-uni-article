#!/bin/bash

pdflatex -synctex=1 -interaction=nonstopmode --shell-escape article.tex
bibtex article
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape article.tex
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape article.tex

rm -f *.aux
rm -f *.bbl
rm -f *.blg
rm -f *.log
rm -f *.synctex.gz
