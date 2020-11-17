#!/bin/bash
sudo apt install gufw && \
sudo apt install clamtk-gnome && \
sudo apt install firejail  && \
sudo apt install ntp && \
sudo apt install gparted && \
sudo snap install snap-store && \
sudo apt install flatpak && \
sudo apt install gnome-software-plugin-flatpak && \
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \
sudo apt install gkrellm && \
sudo apt install torbrowser-launcher && \
sudo snap install goldendictionary && \
sudo apt install artha && \
sudo apt install xchm && \
sudo snap install chromium && \
sudo snap install pinta-james-carroll && \
sudo apt install peek && \
sudo apt install default-jre && \
sudo apt install gimp-plugin-registry && \
sudo snap install inkscape && \
sudo apt-get install ttf-mscorefonts-installer && \
sudo fc-cache \

