#!/bin/bash


# https://christitus.com/stop-using-apt/

# Add Repository

echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list && \
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg && \


# Install Nala on Ubuntu 22+

sudo apt update && sudo apt install nala && \

# Update Mirrors for faster download

sudo nala fetch \

# Edit/delete mirrors

# sudo mousepad /etc/apt/sources.list.d/nala-sources.list
