#!/bin/bash

# Completely automated update setup

# Update & Upgrade

sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \
sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f && \

# clean

sudo apt autoremove && \
sudo apt autoclean && \
sudo apt autoremove && \
sudo apt autoclean \

