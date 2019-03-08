#!/usr/bin/env bash

context $1.tex
pdfcrop $1.pdf
convert -density 300 $1-crop.pdf -quality 90 $1.png
