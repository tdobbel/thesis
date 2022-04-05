#!/bin/bash
compressed=${1%.*}_compressed.pdf

du -sh $1
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=$compressed $1
mv $compressed $1
du -sh $1
