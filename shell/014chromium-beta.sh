#!/bin/bash

# https://itsfoss.com/install-chromium-ubuntu/

sudo add-apt-repository ppa:saiarcot895/chromium-beta && \

sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \

sudo apt install chromium-browser && \
sudo apt install -y chromium-codecs-ffmpeg && \
sudo apt install -y chromium-codecs-ffmpeg-extra \

