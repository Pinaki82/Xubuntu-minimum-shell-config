#!/bin/bash

sudo apt install gufw && \
sudo apt install clamtk-gnome && \
sudo apt install firejail  && \
sudo apt install ntp && \
sudo apt install gparted && \
sudo apt install rsync && \
sudo apt install timeshift && \
sudo apt install grsync && \
sudo apt install synaptic && \
sudo apt install ubuntu-restricted-extras && \
sudo apt install ppa-purge && \
sudo apt install preload && \
sudo apt install tlp && \
sudo apt install tlp-rdw && \
sudo apt install redshift-gtk && \
sudo apt install hardinfo && \
sudo apt install kitty && \
sudo apt install mc && \
sudo apt install simplescreenrecorder && \
sudo snap install snap-store && \
sudo apt install flatpak && \
sudo apt install gnome-software-plugin-flatpak && \
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \
sudo add-apt-repository ppa:appimagelauncher-team/stable && \
sudo apt update && \
sudo apt install appimagelauncher && \
sudo apt install gkrellm && \
sudo apt install torbrowser-launcher && \
sudo snap install goldendictionary && \
sudo apt install artha && \
sudo apt install xchm && \
sudo apt install unrar && \
sudo apt install rar && \
sudo apt install wmctrl && \

# Data Recovery
# https://www.ubuntupit.com/top-15-linux-data-recovery-tools-the-professionals-choice

sudo apt install testdisk && \
sudo apt install safecopy && \
sudo apt install foremost && \

sudo apt install ffmpeg && \
sudo apt install gtkhash && \

# Download QuickHash-GUI-Linux-v3.2.0 from: https://www.quickhash-gui.org

# sudo snap install chromium && \

# Download Manager programs
# XDM - Xtreme Download Manager
# https://github.com/subhra74/xdm

sudo apt install uget && \

sudo snap install pinta-james-carroll && \
sudo add-apt-repository ppa:peek-developers/stable && \
sudo apt update && \
sudo apt install peek && \
sudo apt install screenkey && \
sudo apt install slop && \
# install gifski from https://gif.ski/
# open terminal, then select region to display keystrokes by issuing the command:
# screenkey -p fixed -g $(slop -n -f '%g') --persist -s small --font-size small
sudo apt install default-jre && \
sudo apt install gimp-plugin-registry && \
sudo snap install inkscape && \
sudo apt-get install ttf-mscorefonts-installer && \
sudo fc-cache \

