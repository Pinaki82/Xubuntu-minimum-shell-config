#!/bin/bash

latex int01.tex && \
latex eq001.tex && \
dvipng -T tight -D 6000 --bdpi 2400 -z 9 -bg Transparent -quality 90 -o int01.png int01.dvi && \
dvipng -T tight -D 6000 --bdpi 2400 -z 9 -bg Transparent -quality 90 -o eq001.png eq001.dvi && \
rm *.aux *.dvi *.log \

