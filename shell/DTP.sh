#!/bin/bash

sudo apt install texlive-base && \
sudo apt install texlive-latex-base && \
sudo apt install dvipng && \
sudo apt install dvisvgm && \
sudo apt install ghostscript && \
sudo apt install pandoc && \
sudo apt install gimp && \
sudo apt install gimp-plugin-registry && \

# figlet: Make large character ASCII banners out of ordinary text
# https://kerneltalks.com/tips-tricks/create-beautiful-ascii-text-banners-linux/
# Brave: figlet windows
# https://superuser.com/questions/1361312/figlets-installation-on-windows-10
# npm install -g figlet-cli
# Usage: figlet -f Slant Tulu-C-IDE > ascii-banner-output.txt
# figlet My Text Banner

sudo apt install figlet && \

# Inkscape

# Inkscape latest STABLE version

sudo add-apt-repository ppa:inkscape.dev/stable && \
sudo apt update && \
sudo apt upgrade && \
sudo apt install inkscape && \


sudo apt install lyx && \
sudo apt install scribus \

##############################
# Sigil:
# Ubuntu Focal Fossa 20.04:
# https://ubuntuhandbook.org/index.php/2021/06/install-sigil-ebook-editor-ubuntu-20-04/
# sudo add-apt-repository ppa:xiota/stuff-20.04
# Ubuntu 21.04:
# sudo add-apt-repository ppa:xiota/stuff-21.04
# sudo apt install sigil
##############################

