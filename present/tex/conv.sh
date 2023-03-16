#!/usr/bin/env bash

# context $1.tex

# Usage:
#
# ./conv.sh latex filename-without-extension
#
# or
#
# ./conv.sh context filename-without-extension

$1 $2.tex
pdfcrop $2.pdf
convert -density 300 $2-crop.pdf -quality 90 $2.png
