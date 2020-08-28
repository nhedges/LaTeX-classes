#!/bin/bash
pdflatex test-apa.tex
if [ $? -ne 0 ] ; then exit; fi
biber test-apa
if [ $? -ne 0 ] ; then exit; fi
pdflatex test-apa.tex
if [ $? -ne 0 ] ; then exit; fi
pdflatex test-apa.tex
