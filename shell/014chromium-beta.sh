#!/bin/bash

# https://itsfoss.com/install-chromium-ubuntu/
# https://askubuntu.com/questions/225930/how-do-i-get-the-latest-beta-and-development-version-of-chromium

sudo add-apt-repository ppa:saiarcot895/chromium-beta && \

sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \

sudo apt install chromium-browser && \
sudo apt install -y chromium-codecs-ffmpeg && \
sudo apt install -y chromium-codecs-ffmpeg-extra \

# uninstall
# sudo apt purge --auto-remove chromium-browser
# sudo apt purge --auto-remove chromium-codecs-ffmpeg-extra
# sudo ppa-purge ppa:saiarcot895/chromium-beta
