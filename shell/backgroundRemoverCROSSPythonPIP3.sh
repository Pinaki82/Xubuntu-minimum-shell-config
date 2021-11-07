#!/bin/bash

# ==============================
# NOTE:
#
# Around 1.6GB of Data will be downloaded, and the final installation
# will take up nearly 2.5GB of HDD space (regardless of the OS,
# whether Linux or Win10).
# ==============================
#
# =================================================================
# Python-backed AI Powered Background Remover
# =================================================================
#
# =================================================================
# update
# =================================================================
#
yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \
#
# =================================================================
# update (END)
# =================================================================
#
# Python3 PiP
sudo apt install python3-pip -y && \
#
# =================================================================
# Python-backed AI Powered Background Remover 'Rembg'
# =================================================================
#
# Google: open source background remover linux
# https://forums.linuxmint.com/viewtopic.php?t=339124
# https://github.com/danielgatis/rembg/
#
python3 -m pip install --upgrade pip && \
pip3 install torch torchvision && \
pip3 install rembg && \
pip3 list && \
pip3 show torchvision && \
pip3 show rembg \
#
# Uninstall pip3 packages:
# pip3 uninstall packagename
#
# BG Remover Examples:
# rembg -o ~/Pictures/output01.png ~/Pictures/IMG_20211008_132645.jpg
# rembg -a -ae 25 -o ~/Pictures/output01.png ~/Pictures/IMG_20211008_132645.jpg
#
# Windows 10 users can also use BG Remover if they have Python 3.8 or newer installed on the system:
#
# python3 -m pip install --upgrade pip
# Backup (Not Needed) ->
#   pip3 install torch==1.10.0+cu102 torchvision==0.11.1+cu102 torchaudio===0.10.0+cu102 -f https://download.pytorch.org/whl/cu102/torch_stable.html
#   pip3 install torch==1.7.1+cpu torchvision==0.8.2+cpu -f https://download.pytorch.org/whl/torch_stable.html
# <- Backup
# pip3 install torch torchvision
# pip3 install rembg
# pip3 list
# pip3 show torchvision
# pip3 show rembg
# Uninstall pip3 packages:
#   pip3 uninstall
# BG Remover Examples (on Windows 10):
# rembg -o "M:\2021.10.08-Panchali Gupta\output01.png" "M:\2021.10.08-Panchali Gupta\IMG_20211008_132647.jpg"
# rembg -a -ae 20 -o "M:\2021.10.08-Panchali Gupta\output02.png" "M:\2021.10.08-Panchali Gupta\IMG_20211008_132647.jpg"
