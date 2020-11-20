#!/bin/bash

# https://tecadmin.net/how-to-install-wine-on-ubuntu-20-04

sudo dpkg --add-architecture i386 && \
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add - && \
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' && \
sudo apt update && \
sudo apt install --install-recommends winehq-stable && \
wine --version \

# In any case, you face unmet dependencies error
# sudo apt install aptitude 
# sudo aptitude install winehq-stable 

