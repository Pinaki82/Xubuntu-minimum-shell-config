#!/bin/bash


# VeraCrypt installation guide plus an automated script:
# Ref 1: https://idroot.us/install-veracrypt-ubuntu-20-04/
# Ref 2: https://getfastanswer.com/4263/install-veracrypt-ubuntu-21-04-20-04-and-other-versions
# Download Link: https://www.veracrypt.fr/en/Downloads.html


# =================================================================
# update
# =================================================================

yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \

# =================================================================
# update (END)
# =================================================================


# =================================================================
# Method 1: Using the Generic installer for non-Ubuntu distributions:
# =================================================================

#cd Downloads/ && \
#wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-setup.tar.bz2 && \
#sudo tar -jxvf veracrypt-1.24-Update7-setup.tar.bz2 && \
#sudo ./veracrypt-1.24-Update7-setup-gui-x64 \

# =================================================================
# (END) Method 1.
# =================================================================


# =================================================================
# Method 2: Using the .deb package for Ubuntu or Ubuntu derivatives:
# *-Ubuntu 20.04
# =================================================================

# cd Downloads/ && \
# wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb && \
# sudo dpkg -i veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb \

# Xubuntu 22.04
# https://linuxhint.com/install-use-veracrypt-ubuntu-22-04/

sudo add-apt-repository ppa:unit193/encryption && \
sudo apt update && \
sudo apt install veracrypt \

# =================================================================
# (END) Method 2.
# =================================================================

# =================================================================
# zuluCrypt

# Like VeraCrypt, zuluCrypt is a lightweight drive encryption tool
# for Linux. However, VeraCrypt is more suitable for accessing
# the encrypted volume/file on different operating systems. It
# provides a consistent experience across platforms.
# zuluCrypt can mount VeraCrypt initiated volumes but fails to
# change the passwords set using VeraCrypt. zuluCrypt
# works flawlessly on LUKS volumes restricted to Linux environments.
# If you do not plan to have access to your encrypted volume/file
# outside of Linux, look no further and use zuluCrypt.
# If you use Windows and Linux both, go for VeraCrypt. After all,
# encrypted volumes contain the most sensitive documents. Nobody
# needs to mount an encrypted partition on multiple computers found
# in public libraries/cyber cafes/organisation managed devices.
# Use what you absolutely need.
# =================================================================

#sudo apt install zulucrypt-gui && \
#sudo apt install zulucrypt-cli \

# =================================================================
# (END) zuluCrypt
# =================================================================

