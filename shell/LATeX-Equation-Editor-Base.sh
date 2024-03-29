#!/bin/bash

# WYSIWYG LATeX Equation Editors

# References:
# https://equalx.sourceforge.io/
# https://www.thrysoee.dk/laeqed/

sudo apt install texlive-base && \
sudo apt install dvipng && \
sudo apt install dvisvgm && \
sudo apt install ghostscript && \
sudo apt install equalx && \
sudo apt install klatexformula && \
# JVM Runtime is required by Laeqed
sudo apt install default-jre \

# On MS Windows, use MiKTeX (https://miktex.org/),
# Ghostscript (https://www.ghostscript.com/),
# EqualX (https://equalx.sourceforge.io/),
# Laeqed (https://www.thrysoee.dk/laeqed/).

