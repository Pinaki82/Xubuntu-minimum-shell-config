#!/bin/bash

# Install Wine, DXVK, and Lutris on *-buntu 20.04.1

# NOTE:
# Avoid Wine and anything related to Windows binary,
# unless you are in dire need of a Windows program.
# Most programs and games don't play well on Wine.
# Try the cross-platform alternatives to Windows-ONLY programs
# (with native support for Linux platforms) and first try them
# on a Windows machine.

# Warning:
# The download size is large beyond belief still the Wine+DXVK+Lutris setup
# doesn't meet the minimum expectations sometimes.
# Most DirectX dependent applications and games won't run even with having all
# these high-end technological components installed.
# Wine, DXVK, and Lutris combined will eat up considerable hard drive resources.
# Installation may take half-an-hour or longer.
# These packages will leave traces on your system-installation even after they
# are uninstalled.

# To sum up: Don't get drunk.

# #################################################
# Or, proceed with caution, in your responsibility.
# #################################################

# Update your system

sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \

# https://linuxconfig.org/improve-your-wine-gaming-on-linux-with-dxvk

# Install Vulkan

sudo apt install libvulkan1 && \
sudo apt install libvulkan-dev && \
sudo apt install vulkan-utils && \

# Skip the GPU driver installation steps if the system has already
# installed the latest driver automatically

# For AMD ATI Radeon GPUs

# sudo add-apt-repository ppa:oibaf/graphics-drivers && \
# sudo apt update && \
# sudo apt list --upgradable && \
# sudo apt upgrade && \
# sudo apt update && \
# sudo apt install -f && \
# sudo apt install mesa-vulkan-drivers && \
# https://linuxhint.com/enable-vulkan-rendering-in-wine-games/ && \
# sudo apt install mesa-vulkan-drivers:i386 && \
# sudo apt install libvulkan1 && \
# sudo apt install libvulkan1:i386 && \

# For NVIDIA GPUs

# add-apt-repository ppa:graphics-drivers/ppa && \
# sudo apt update && \
# sudo apt list --upgradable && \
# sudo apt upgrade && \
# sudo apt update && \
# sudo apt install -f && \
# sudo apt install vulkan && \

# Install Lutris
# https://linuxconfig.org/install-lutris-on-ubuntu-20-04-focal-fossa-linux
# https://tecadmin.net/how-to-install-wine-on-ubuntu-20-04

sudo dpkg --add-architecture i386 && \
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add - && \
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' && \
sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \
sudo apt install --install-recommends winehq-stable && \
sudo add-apt-repository ppa:lutris-team/lutris && \
sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \
sudo apt install lutris && \
wine --version \

# In any case, you encounter unmet dependencies error:
# sudo apt install aptitude 
# sudo aptitude install winehq-stable 

# Install DXVK

# Download DXVK from GitHub
# https://github.com/doitsujin/dxvk/releases
# Extract the 'xyz.tar' file
# https://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux
# Open terminal and type:
# cd ~/Downloads
# tar -xzvf dxvk-1.7.3.tar.gz
# cd ~/Downloads/dxvk-1.7.3
# sh setup_dxvk.sh install --with-d3d10
# Then run
# winecfg
