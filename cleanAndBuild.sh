#!/bin/bash

projectName="ResourceAllocationReport"
echo 'Project name is: ' $projectName
echo 'Remove all *.log *.aux *.bbl *.blg *.gz *.dvi files'
rm -rfv *.{log,aux,bbl,blg,gz,dvi,*~}
stty -echo
pdflatex $projectName
bibtex $projectName
pdflatex $projectName
pdflatex $projectName
stty echo

