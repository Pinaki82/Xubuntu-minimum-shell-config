#!/bin/bash

sudo apt install darktable && \
sudo apt install ffmpeg && \
sudo apt install mediainfo && \
sudo apt install vlc && \
sudo snap install handbrake-jz && \

# Only download what you need

# sudo snap install kdenlive && \
# sudo snap install shotcut && \

# Or, go for Cinelerra-GG Infinity

# https://www.cinelerra-gg.org
# Download a static Single-user build
# https://www.cinelerra-gg.org/downloads
# Source Code: https://github.com/cinelerra-gg

# Create a desktop entry: Cinelerra-GG Infinity
# As:

# =================================
# #!/usr/bin/env xdg-open

# [Desktop Entry]
# X-AppInstall-Package=cin
# X-AppInstall-Popcon=1158
# X-AppInstall-Section=main

# Name=Cinelerra-GG Infinity
# GenericName=Video Editor
# Comment=Video Edititing Program
# TryExec='/home/YourUserName/cinelerra-5.1-ub20.04-20201031.x86_64-static/cin'
# Exec='/home/YourUserName/cinelerra-5.1-ub20.04-20201031.x86_64-static/cin'
# Terminal=false
# Type=Application
# Icon=/home/YourUserName/cinelerra-5.1-ub20.04-20201031.x86_64-static/CinGG.png
# Categories=Multimedia;VideoEditor;
# StartupNotify=true
# MimeType=;

# X-Ubuntu-Gettext-Domain=app-install-data
# Path='/home/YourUserName/cinelerra-5.1-ub20.04-20201031.x86_64-static/'
# =================================

# Online Graphic Design (Software As A Service)
# https://videobolt.net/welcome
# https://biteable.com

sudo apt install blender && \
sudo snap install natron \


