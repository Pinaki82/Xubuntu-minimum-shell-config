#!/bin/bash

# Install darktable if you work with Nikon/Canon DSLR RAW Images
# sudo apt install darktable && \
# Read metadata from Camera RAW
# sudo apt install libimage-exiftool-perl && \

# Luminance HDR is a high-dynamic-range image creation and manipulation program
# sudo apt install luminance-hdr
# Hugin is a panorama photo stitching and HDR merging program
# sudo apt install hugin

sudo apt install ffmpeg && \
sudo apt install mediainfo && \
sudo apt install mediainfo-gui && \
# sudo apt install devede && \
sudo apt install winff && \
sudo apt install winff-doc \
# sudo apt install vlc && \
# sudo snap install handbrake-jz && \

# Only download what you need

# Kdenlive and Shotcut Video Editors can be installed as snap apps,
# or these packages can be downloaded as portable AppImage binaries

# sudo snap install kdenlive && \
# sudo snap install shotcut && \

# Or, go for Cinelerra-GG Infinity

# https://www.cinelerra-gg.org
# Download a static Single-user build
# https://www.cinelerra-gg.org/downloads
# Source Code: https://github.com/cinelerra-gg

# Create a desktop entry: Cinelerra-GG-Infinity
# As:

# =================================
# #!/usr/bin/env xdg-open

# [Desktop Entry]
# X-AppInstall-Package=cin
# X-AppInstall-Popcon=1158
# X-AppInstall-Section=main

# Name=Cinelerra-GG Infinity
# GenericName=Video Editor
# Comment=Professional Video Edititing Program
# TryExec=/bin/bash -c 'cd "$(dirname "$0")"; ./cin -windowed' %k
# Exec=/bin/bash -c 'cd "$(dirname "$0")"; ./cin -windowed' %k
# Terminal=false
# Type=Application
# Icon=/bin/bash -c 'cd "$(dirname "$0")"; CinGG.png %k
# Categories=Multimedia;VideoEditor;
# StartupNotify=false
# MimeType=;

# X-Ubuntu-Gettext-Domain=app-install-data
# Path=bash -c 'cd $(dirname %0)';
# GenericName=Cinelerra-GG-Infinity
# Name[en_IN]=Cinelerra-GG-Infinity
# =================================

# Online Graphic Design (Software As A Service)
# https://videobolt.net/welcome
# https://biteable.com

# 2D Animation
# sudo snap install --candidate synfigstudio

# Slideshow maker
# sudo apt install ffdiaporama
# =================================

# Blender 3D Animation package can be installed as a snap app

# sudo add-apt-repository ppa:savoury1/blender && \
# https://ubuntuhandbook.org/index.php/2021/06/install-blender-2-93-ppa-ubuntu-20-04/
# sudo apt update && \
# sudo apt install blender && \

# Natron: Node-based compositing application, influenced by
# digital compositing software such as Avid Media Illusion, Apple Shake, Blackmagic Fusion, Autodesk Flame and Nuke

# sudo snap install natron \

