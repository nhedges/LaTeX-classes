#!/bin/bash
docName=$1
pdflatex ${docName}.tex
if [ $? -ne 0 ] ; then exit; fi
/usr/bin/perl /usr/bin/biber ${docName}
if [ $? -ne 0 ] ; then exit; fi
pdflatex ${docName}.tex
if [ $? -ne 0 ] ; then exit; fi
pdflatex ${docName}.tex
