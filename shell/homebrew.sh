#!/bin/bash


# https://christitus.com/best-package-manager/

# Required Build Tools
sudo apt install build-essential procps curl file git && \

# Install Script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \

# By default homebrew puts itself in '/home/linuxbrew/.linuxbrew'.

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" \
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" \
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile \
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile \
# Add the following line to ~/.bashrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# Automatic method ->
echo "eval \"\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)\"" >> ~/.bashrc \

# Open ~/.config/fish/config.fish
# Fish Shell: Add the following segment to the fish shell's config (without the HASH sign).

# ---------------------------------------------------

#set PATH $PATH /home/linuxbrew/.linuxbrew/bin/
#export PATH

# ---------------------------------------------------
# Complete

# Uninstall Homebrew:
# https://github.com/homebrew/install#uninstall-homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
# Delete the following line from your .bashrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
