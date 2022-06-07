#!/bin/bash

sudo apt install gufw && \
sudo apt install clamtk-gnome && \
sudo apt install chkrootkit && \
sudo apt install rkhunter && \
sudo apt install firejail && \
# sudo apt install firetools && \
sudo apt install ntp && \
sudo apt install gparted && \
sudo apt install gnome-disk-utility && \
sudo apt install rsync && \
sudo apt install timeshift && \
sudo apt install grsync && \
sudo apt install synaptic && \
sudo apt install ubuntu-restricted-extras && \
sudo apt install ppa-purge && \
sudo apt install preload && \

# #################################################

# Power management utility for laptops.

sudo apt install tlp && \
sudo apt install tlp-rdw && \

# #################################################
sudo apt install redshift-gtk && \
sudo apt install caffeine && \
sudo apt install hardinfo && \
sudo apt install htop && \
# ranger: Console File Manager with VI Key Bindings
sudo apt install ranger && \
# trash-cli: Send files to trash from the terminal instead of permanently deleting them
sudo apt install trash-cli && \
# ncdu: ncurses disk usage viewer
sudo apt install ncdu && \
# Pfetch/Neofetch: Shows Linux System Information with Distribution Logo
sudo apt install neofetch && \
# Open a terminal emulator and type
# fish_config
# to configure fish shell (e.g. aliases)
sudo apt install fish && \
sudo apt install kitty && \
sudo apt install mc && \
sudo apt install simplescreenrecorder && \

# sudo snap install snap-store && \
# sudo apt install flatpak && \
# sudo apt install gnome-software-plugin-flatpak && \
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \

# AppImage support

sudo apt install libfuse2 && \

sudo add-apt-repository ppa:appimagelauncher-team/stable && \
sudo apt update && \
sudo apt install appimagelauncher && \
sudo apt install psensor && \
sudo apt install gkrellm && \
sudo apt install torbrowser-launcher && \

# sudo apt install epiphany-browser && \
# sudo add-apt-repository ppa:otter-browser/release && \
# sudo apt update && \
# sudo apt install otter-browser && \

# # # # # # # # # # # # # # # # # # # # #
# Surf browser
# apt search surf
# Simple web browser by suckless community
# https://surf.suckless.org/
# Usage:
# Open a terminal emulator (e.g. GNOME Terminal,
# XFCE Terminal, Kitty Terminal Emulator etc.) and type
# 'surf URL'.
# The 'URL' is the site you want to visit.
# Examples:
# surf duckduckgo.com
# surf startpage.com
# surf searx.me
# surf google.com
# Ctrl+H is Back <-
# Ctrl+L is Forward ->
sudo apt install surf && \
# # # # # # # # # # # # # # # # # # # # #
# sudo apt install goldendictionary && \

sudo apt install artha && \
sudo apt install xchm && \
sudo apt install okular && \
sudo apt install unrar && \
sudo apt install rar && \
sudo apt install p7zip-full && \
sudo apt install p7zip-rar && \
sudo apt install xz-utils && \
sudo apt install lrzip && \
sudo apt install pixz && \
sudo apt install wmctrl && \
sudo apt install nscd && \
sudo apt install xclip && \
sudo apt install uget && \
sudo apt install aria2 && \

# Find duplicate files
# https://www.makeuseof.com/best-tools-find-and-remove-duplicate-files-linux/

sudo apt install fdupes && \

# fdupes -r ~/Pictures/MaterialDesign/
# Or,
# fdupes -r -d ~/Pictures/MaterialDesign/
# To delete

sudo apt install rdfind && \

# rdfind ~/Pictures/MaterialDesign/

sudo add-apt-repository ppa:dupeguru/ppa && \
sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \
sudo apt install dupeguru && \

# Python3 PiP

sudo apt install python3-pip && \

# Sound device tweak utility
# sudo apt install alsa-tools-gui && \

# Data Recovery
# https://www.ubuntupit.com/top-15-linux-data-recovery-tools-the-professionals-choice

sudo apt install testdisk && \
sudo apt install safecopy && \
sudo apt install foremost && \

sudo apt install ffmpeg && \
sudo apt install youtube-dl && \
sudo apt install gtkhash && \

# Download QuickHash-GUI-Linux-v3.2.0 from: https://www.quickhash-gui.org

# sudo snap install chromium && \

# Download Manager programs
# XDM - Xtreme Download Manager
# https://github.com/subhra74/xdm

sudo apt install uget && \

# sudo snap install pinta-james-carroll && \

# sudo apt instal krita && \
# Download Krita AppImage. https://krita.org/en/download/krita-desktop/

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
sudo apt install gmic && \
sudo apt install gimp-gmic && \

# Inkscape

# Inkscape latest STABLE version

sudo add-apt-repository ppa:inkscape.dev/stable && \
sudo apt update && \
sudo apt upgrade && \
sudo apt install inkscape && \

# Inkscape latest DEVELOPMENT version

# Remove the old latest stable apt-repository of Inkscape and the installed software
# sudo add-apt-repository --remove ppa:inkscape.dev/stable && \
# sudo apt purge --auto-remove inkscape && \
# sudo add-apt-repository universe && \
# Add new development apt-repository && \
# sudo add-apt-repository ppa:inkscape.dev/trunk && \
# sudo apt update && \
# sudo apt upgrade && \
# sudo apt install inkscape-trunk && \

sudo apt-get install ttf-mscorefonts-installer && \
sudo fc-cache \

