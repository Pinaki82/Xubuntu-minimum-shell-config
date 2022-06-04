#!/bin/bash

# SMTube
# YouTube video playback without Flash Player.
# Helps to play YouTube videos on low-end machines.

# http://www.smtube.org/
# "SMTube - YouTube browser for SMPlayer.
# SMTube is an application that allows to browse, search and play YouTube videos.
# Videos are played back with a media player (by default SMPlayer)
# instead of a flash player, this allows better performance, 
# particularly with HD content."


# echo 'deb http://download.opensuse.org/repositories/home:/smplayerdev/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:smplayerdev.list && \
# curl -fsSL https://download.opensuse.org/repositories/home:smplayerdev/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_smplayerdev.gpg > /dev/null && \
# sudo apt update && \
# sudo apt install youtube-dl && \
# sudo apt install smtube \

# https://www.smtube.org/

# sudo add-apt-repository ppa:rvm/smplayer && \
# sudo apt-get update && \
sudo apt install smtube smplayer \

# youtube-dlG
# https://github.com/MrS0m30n3/youtube-dl-gui


# ------------------------------------------------------------------------------
# I tested SMTube on a VM. SMTube behaved unexpectedly when installed inside the guest VM.
# It changed the cursor/'mouse pointer' to a
# black cross-mark. As a quick fix around the system without needing to install
# any extraneous package, I restarted the lightdm service and everything went
# back to normal again.
# -----------------------Jot the following lines down to a piece of paper------
# CTRL+ALT+F3
# sudo systemctl restart lightdm.service
# ALT+F7
# ------------------------------------------------------------------------------

