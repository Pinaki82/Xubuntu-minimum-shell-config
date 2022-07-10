#!/bin/bash

# Download all installed packages on Ubuntu
# http://www.beginninglinux.com/home/backup/download-all-installed-packages-on-ubuntu

# ------------------------------------------------------------------------
# Download and Create a local repository of the packages
# installed on your system.
# ------------------------------------------------------------------------

# sudo thunar /var/cache
# R-click on the folder 'apt' and
# create an archive.
# Make a .tar.gz archive of the downloaded packages.
# Put that .tar.gz file into a pen drive and take it to other machines
# where you need to install the same packages.
# Extract the archive into the folder /var/cache on that machine.
# NOTE: You'll need an active internet connection to
# install software on any system. Downloaded installer files will save
# your time to fetch packages from a remote repository and may
# also save some bandwidth (depending on the size of each
# program and the number of programs on your system).

# Folder structure: ###############################
#     /var/cache/apt
#               /apt/
#                    archives/
#                             pkgcache.bin
#                             srcpkgcache.bin
#                    archives/
#                    archives/partial/
#                    archives/
#                             a - z package.deb
# ###############################################


dpkg -l | grep "^ii"| awk ' {print $2} ' | xargs sudo apt-get -y install --reinstall --download-only \
