#!/bin/bash
# sh 001update.sh
sudo apt update && \
sudo apt list --upgradable && \
sudo apt upgrade && \
sudo apt update && \
sudo apt install -f \
