#!/bin/bash

cd bib/paper/
ls *.bib | grep -v bibliography.bib | xargs cat > bibliography.bib
sed -i "/url = {.*}/d" bibliography.bib
sed -i "/series = {.*}/d" bibliography.bib
sed -i "/address = {.*}/d" bibliography.bib
sed -i "/publisher = {.*}/d" bibliography.bib
cd ../..
xelatex paper.tex
bibtex paper.aux
xelatex paper.tex
xelatex paper.tex
