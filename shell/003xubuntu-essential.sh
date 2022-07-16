#!/bin/bash

sudo apt install gufw && \
sudo apt install resolvconf && \
sudo apt install clamtk-gnome && \
sudo apt install chkrootkit && \
sudo apt install rkhunter && \
sudo apt install firejail && \
sudo apt install openvpn && \
sudo apt install network-manager-openvpn && \
sudo apt install smartmontools && \
sudo apt install gsmartcontrol && \
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
# btop++: Modern and colorful command line resource monitor that shows
# usage and stats for processor, memory, disks, network and processes.
sudo apt install btop && \
# Usage:
# btop --utf-force
# q
# ranger: Console File Manager with VI Key Bindings
sudo apt install ranger && \
# nnn: Free, fast, friendly file manager
sudo apt install nnn && \
# Usage:
# nnn
# Arrow-keys
# q
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
# sudo apt install gnome-terminal && \
sudo apt install mc && \
sudo apt install simplescreenrecorder && \

# ---------
# 9 AMAZING COMMAND LINE TOOLS for Linux
# https://youtu.be/kFh1acsQ8DQ

# autojump
# https://github.com/wting/autojump.git
sudo apt install autojump && \
sudo apt install fzf && \
echo '. /usr/share/autojump/autojump.sh' >> ~/.bashrc && \
source ~/.bashrc && \
# https://www.tecmint.com/autojump-a-quickest-way-to-navigate-linux-filesystem/1/

# thef**k
sudo apt install thefuck && \
# https://github.com/nvbn/thefuck/#requirements
# Just type luck instead of typing f__k in an office or in front of clients.
echo 'eval "$(thefuck --alias luck)"' >> ~/.bashrc && \
# https://github.com/nvbn/thefuck
# https://programmerall.com/article/10391819507/
# https://www.cyberciti.biz/media/new/cms/2017/08/demo-thefuck-command.gif

# thef__k for the FISH SHELL:
# https://github.com/oh-my-fish/plugin-thefuck
# https://github.com/oh-my-fish/oh-my-fish#installation
sudo apt install git && \
git clone https://github.com/oh-my-fish/oh-my-fish && \
# Install manually:
# cd oh-my-fish && \
# bin/install --offline
# omf install thefuck

# tldr
# https://github.com/tldr-pages/tldr.git
sudo apt install python3-pip && \
pip3 install tldr && \
# ---------

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
sudo apt install ghostwriter && \
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

# Defrag NTFS Volumes.
# https://askubuntu.com/questions/59007/defragging-ntfs-partitions-from-linux
# https://github.com/tuxera/ntfs-3g
sudo apt install ntfs-3g && \

# Data Recovery
# https://www.ubuntupit.com/top-15-linux-data-recovery-tools-the-professionals-choice

sudo apt install testdisk && \
sudo apt install safecopy && \
sudo apt install foremost && \
sudo apt install gddrescue && \
sudo apt install ddrescueview && \
sudo apt install recoverjpeg && \

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

