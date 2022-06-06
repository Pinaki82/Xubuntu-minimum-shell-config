#!/bin/bash

# *********************
# Allow the file to execute (change permission parameters) (common step):
# chmod +x script_to_run.sh
# Run:
# ./script_to_run.sh
# Do not prepend 'sudo' to run this script.
# *********************


# ==================================== ROOT CHECK
# References (root check):
# https://superuser.com/questions/688882/how-to-test-if-a-variable-is-equal-to-a-number-in-shell
# YouTube/DistroTube/How To Use Shell Environment Variables  -  https://youtu.be/9ZpL8iDU7LY

echo "Checking whether you're running this script as root or not..."

if [ "$(id -u)" = 0 ]; then
  echo "You cannot run this script as root!"
  sleep 1
  exit 1
else
  echo "You can proceed..."
fi

# ************************************************************************
# NOTE:
# For string literal comparison:
#	  Spacing around == is a must
#   Spacing around = is a must
#   [[ ... ]] i.e., the double parenthesis reduces errors as no pathname expansion or word splitting takes place between [[ and ]]
#   Prefer quoting strings that are "words"

# For Integer comparison:
#   if [ "$(id -u)" = 0 ];

# Correct code (chmod -x \
#               ./script_to_run.sh): if [ "$(id -u)" = 0 ]; then
# echo $UID on root will always produce 0
# ************************************************************************
# ========================== (END) ROOT CHECK


# =================================================================
# virtualbox-shared-folder-permission
# =================================================================

echo "Are you on a VirtualBox VM (yes=1, no=0)?"
echo "Type 0 [zero in number] if you are on a real machine. (no=0)"
read choice
echo "Your input was $choice"
if [ "${choice}" != '0' ]; then
  echo "Oh no! You're on a VirtualBox VM!!"
  echo "Wait till the setup script stops running..."
   sleep 1
   exit
else
  echo "Ok. You're on a real machine."
  sleep 1

fi

# =================================================================
# virtualbox-shared-folder-permission (END)
# =================================================================


# =================================================================
# pip3 packages - path setup
# =================================================================

# export PATH="$HOME/.local/bin/:$PATH"

touch .bash_profile  && \
# https://stackoverflow.com/questions/8467424/echo-newline-in-bash-prints-literal-n?rq=1
printf "Add the following entry,\n  then write changes & exit.\n"
echo "    export PATH="'"$HOME/.local/bin/:$PATH"'"    "
echo "file:  .bash_profile"
sleep 3
mousepad .bash_profile  && \
# https://askubuntu.com/questions/108258/what-is-the-bash-equivalent-of-doss-pause-command
read -p ""  && \
# https://stackoverflow.com/questions/8467424/echo-newline-in-bash-prints-literal-n?rq=1
printf "Add the following entry,\n  then write changes & exit.\n"
echo "    export PATH="'"$HOME/.local/bin/:$PATH"'"    "
echo "file:  .bashrc"
sleep 3
mousepad .bashrc  && \
# https://askubuntu.com/questions/108258/what-is-the-bash-equivalent-of-doss-pause-command
read -p " "  && \
sleep 1
source "/home/$(whoami)/.bashrc"  && \
source "/home/$(whoami)/.bash_profile"  && \
source "/home/$(whoami)/.profile"  && \

# =================================================================
# pip3 packages - path setup (END)
# =================================================================


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
# Lock the Desktop folder on Linux
# =================================================================

# to avoid cluttering your Desktop with files and folders
# that in turn spoil the beauty of the installation
# https://www.cyberciti.biz/faq/howto-set-readonly-file-permission-in-linux-unix/
# https://chmodcommand.com/chmod-444/
# https://chmodcommand.com/
# Example: chmod 0444 permissiontest/
# Where 'permissiontest' is the intended folder to be locked
# Unlock:
# https://www.linux.com/training-tutorials/how-manage-file-and-folder-permissions-linux/
# chmod u+rw permissiontest/

yes | sudo chmod 0444 ~/Desktop/ && \

# Unlock (if you ever need):
# sudo chmod u+rw ~/Desktop/
# =================================================================
# Lock the Desktop folder on Linux (END)
# =================================================================


# =================================================================
# developer utilities
# =================================================================

sudo apt install build-essential -y && \
sudo apt install patch -y && \
sudo apt install make -y && \
sudo apt install diffutils -y && \
sudo apt install llvm -y && \
sudo apt install clang -y && \
sudo apt install clangd -y && \
sudo apt install clang-tidy -y && \
sudo apt install clang-tools -y && \
sudo apt install lld -y && \
sudo apt install libomp-dev -y && \
sudo apt install curl -y && \
yes | curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -  && \
yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \
sudo apt-get install -y nodejs -y && \
sudo apt install cdecl -y && \
sudo apt install cutils -y && \
sudo apt install kitty -y && \
sudo apt install tree -y && \
sudo apt install mc -y && \
sudo apt install xclip -y && \
# https://itsfoss.com/vim-8-release-install/
# sudo add-apt-repository ppa:jonathonf/vim -y && \
# sudo apt update -y && \
sudo apt install vim-gtk -y && \
sudo apt install cppcheck -y && \
sudo apt install cppcheck-gui -y && \
sudo apt install splint -y && \
sudo apt install cmake-gui -y && \
sudo apt install cmake -y && \
sudo apt install wget -y && \
sudo apt install unzip -y && \
sudo apt install git -y && \

# https://softwarerecs.stackexchange.com/questions/30351/visualizing-git-diff-linux#30352
# gitk & git-gui added to installation script.
# Both can show results graphically when launched from the directory
# containing .git folder. These are the simplest alternative
# to dealing with the command-line diff/merge/commit/stage/push tools.
# Can be supplementary utilities even when a CUI is preferred over the GUI.

sudo apt install gitk -y && \
sudo apt install git-gui -y && \

# Below are some (terminal-based) utilities for adding more
# functionalities to the existing Git installation

sudo apt install git-extras -y && \
sudo apt install git-flow -y && \
sudo apt install diffutils -y && \
sudo apt install diffstat -y && \

# Debuggers, code profilers, memory leak testers, build tools,
# code formatting applications and more

sudo apt install ddd -y && \
sudo apt install valgrind -y && \
sudo apt install cgdb -y && \
sudo apt install astyle -y && \
sudo apt install universal-ctags -y && \
sudo apt install autoconf -y && \
sudo apt install pkg-config -y && \
sudo apt install libx11-dev -y && \
sudo apt install libglib2.0-doc -y && \
sudo apt install libtool -y && \
sudo apt install autoproject -y && \
sudo apt install autogen -y && \
sudo apt install autotools-dev -y && \
sudo apt install automake -y && \
sudo apt install m4 -y && \
sudo apt install make -y && \
sudo apt install ninja-build -y && \
sudo apt install meld -y && \

# Markdown to HTML etc.

sudo apt install markdown -y && \

# Text search utilities

sudo apt install regexxer -y && \
# sudo apt install vizigrep -y && \
sudo apt install searchmonkey -y && \

# =================================================================
# developer utilities (END)
# =================================================================


# =================================================================
# essential packages
# =================================================================

sudo apt install gufw -y && \
sudo apt install clamtk-gnome -y && \
sudo apt install chkrootkit -y && \
sudo apt install rkhunter -y && \
sudo apt install firejail -y && \
sudo apt install firetools -y && \
sudo apt install ntp -y && \
sudo apt install gparted -y && \
sudo apt install gnome-disk-utility -y && \
sudo apt install rsync -y && \
sudo apt install timeshift -y && \
sudo apt install grsync -y && \
sudo apt install synaptic -y && \
sudo apt install ubuntu-restricted-extras -y && \
sudo apt install ppa-purge -y && \
sudo apt install preload -y && \

# #################################################

# Power management utility for laptops.

sudo apt install tlp -y && \
sudo apt install tlp-rdw -y && \

# #################################################
sudo apt install redshift-gtk -y && \
sudo apt install caffeine -y && \
sudo apt install hardinfo -y && \
sudo apt install htop -y && \
# ranger: Console File Manager with VI Key Bindings
sudo apt install ranger -y && \
# trash-cli: Send files to trash from the terminal instead of permanently deleting them
sudo apt install trash-cli -y && \
# ncdu: ncurses disk usage viewer
sudo apt install ncdu -y && \
# Pfetch/Neofetch: Shows Linux System Information with Distribution Logo
sudo apt install neofetch -y && \
# Open a terminal emulator and type
# fish_config
# to configure fish shell (e.g. aliases)
sudo apt install fish -y && \
sudo apt install kitty -y && \
sudo apt install mc -y && \
sudo apt install simplescreenrecorder -y && \

# sudo snap install snap-store && \
# sudo apt install flatpak -y && \
# sudo apt install gnome-software-plugin-flatpak -y && \
# yes | flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \

# AppImage support

sudo apt install libfuse2 -y && \

yes | sudo add-apt-repository ppa:appimagelauncher-team/stable && \
yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \
sudo apt install appimagelauncher -y && \

sudo apt install gkrellm -y && \
sudo apt install psensor -y && \
sudo apt install torbrowser-launcher -y && \
# sudo apt install epiphany-browser -y && \

# yes | sudo add-apt-repository ppa:otter-browser/release && \
# yes | sudo apt update && \
# sudo apt install otter-browser -y && \

# # # # # # # # # # # # # # # # # # # # #
# Surf browser
# apt search surf
# Simple web browser by suckless community
# https://surf.suckless.org/
# Usage:
# Open a terminal emulator (e.g. GNOME Terminal,
# XFCE Terminal, Kitty Terminal Emulator etc.) and type
# 'surf URL'.
# The 'URL' is the site you want to visit.
# Examples:
# surf duckduckgo.com
# surf startpage.com
# surf searx.me
# surf google.com
# Ctrl+H is Back <-
# Ctrl+L is Forward ->
sudo apt install surf -y && \
# # # # # # # # # # # # # # # # # # # # #
# sudo snap install goldendictionary && \

sudo apt install artha -y && \
sudo apt install okular -y && \
sudo apt install xchm -y && \

sudo apt install unrar -y && \
sudo apt install rar -y && \
sudo apt install p7zip-full -y && \
sudo apt install p7zip-rar -y && \
sudo apt install xz-utils -y && \
sudo apt install lrzip -y && \
sudo apt install pixz -y && \
sudo apt install wmctrl -y && \
sudo apt install nscd -y && \
sudo apt install xclip -y && \
sudo apt install uget -y && \
sudo apt install aria2 -y && \

# Find duplicate files
# https://www.makeuseof.com/best-tools-find-and-remove-duplicate-files-linux/

sudo apt install fdupes -y && \

# fdupes -r ~/Pictures/MaterialDesign/
# Or,
# fdupes -r -d ~/Pictures/MaterialDesign/
# To delete

sudo apt install rdfind -y && \

# rdfind ~/Pictures/MaterialDesign/

yes | sudo add-apt-repository ppa:dupeguru/ppa && \
yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \
sudo apt install dupeguru -y && \

# Python3 PiP

sudo apt install python3-pip -y && \

# Sound device tweak utility
# sudo apt install alsa-tools-gui && \

# Data Recovery
# https://www.ubuntupit.com/top-15-linux-data-recovery-tools-the-professionals-choice

sudo apt install testdisk -y && \
sudo apt install safecopy -y && \
sudo apt install foremost -y && \

sudo apt install ffmpeg -y && \

sudo apt install youtube-dl -y && \

sudo apt install gtkhash -y && \

# Download QuickHash-GUI-Linux-v3.2.0 from: https://www.quickhash-gui.org

# sudo snap install chromium && \

# Download Manager programs
# XDM - Xtreme Download Manager
# https://github.com/subhra74/xdm

sudo apt install uget -y && \

yes | sudo add-apt-repository ppa:peek-developers/stable && \
yes | sudo apt update && \
sudo apt install peek -y && \
sudo apt install screenkey -y && \
sudo apt install slop -y && \

# install gifski from https://gif.ski/
# open terminal, then select region to display keystrokes by issuing the command:
# screenkey -p fixed -g $(slop -n -f '%g') --persist -s small --font-size small
sudo apt install default-jre -y && \

sudo apt install gimp-plugin-registry -y && \
sudo apt install gmic -y && \
sudo apt install gimp-gmic -y && \

# Inkscape

# Inkscape latest STABLE version

yes | sudo add-apt-repository ppa:inkscape.dev/stable && \
yes | sudo apt update && \
yes | sudo apt upgrade && \
sudo apt install inkscape -y && \

# Inkscape latest DEVELOPMENT version

# Remove the old latest stable apt-repository of Inkscape and the installed software
# sudo add-apt-repository --remove ppa:inkscape.dev/stable && \
# sudo apt purge --auto-remove inkscape && \
# sudo add-apt-repository universe && \
# Add new development apt-repository && \
# sudo add-apt-repository ppa:inkscape.dev/trunk && \
# sudo apt update && \
# sudo apt upgrade && \
# sudo apt install inkscape-trunk && \

sudo apt-get install ttf-mscorefonts-installer -y && \
yes | sudo fc-cache && \

# =================================================================
# essential packages (END)
# =================================================================


# =================================================================
# authentication
# =================================================================

# sudo add-apt-repository ppa:phoerious/keepassxc -y && \

sudo apt install keepassxc -y && \

# NOTE:
# Download KeePassXC and MYKI AppImage instead, if you do not need
# KeePassXC's SSH integration and CLI

# =================================================================
# authentication (END)
# =================================================================


# =================================================================
# GnuPG
# =================================================================

# PGP Encryption and file signing
# sudo apt install gpa  && \
# sudo apt install kleopatra \
# Optional (Warning: kleopatra Requires KDE dependencies and 117MB extra space on the drive)

sudo apt install gpa -y && \

sudo apt install libccid -y && \
sudo apt install opensc-pkcs11 -y && \
sudo apt install pcsc-tools -y && \
sudo apt install pcscd -y && \
sudo apt install opensc -y && \

sudo apt install gnupg -y && \

sudo apt install scdaemon -y && \

# =================================================================
# GnuPG (END)
# =================================================================


# =================================================================
# fancy-dock-n-search
# =================================================================
sudo apt install plank -y && \

# sudo apt install synapse -y && \

# =================================================================
# fancy-dock-n-search (END)
# =================================================================


# =================================================================
# video-n-vfx (media file converters - CLI)
# =================================================================

sudo apt install ffmpeg -y && \
sudo apt install mediainfo -y && \
sudo apt install mediainfo-gui -y && \
sudo apt install devede -y && \
sudo apt install winff -y && \
sudo apt install winff-doc -y && \

# =================================================================
# video-n-vfx (media file converters - CLI) (END)
# =================================================================


# =================================================================
# 'bpytop' System Monitoring Tool
# =================================================================

# https://www.osradar.com/install-bpytop-on-ubuntu-debian-a-terminal-monitoring-tool/

pip3 install bpytop && \

# =================================================================
# 'bpytop' System Monitoring Tool (END)
# =================================================================


# =================================================================
# c-c-plus-plus-common-libraries
# =================================================================

# Boost C++ libraries

sudo apt install libboost-all-dev -y && \

# OpenGL libraries

sudo apt install libglu1-mesa-dev -y && \
sudo apt install freeglut3-dev -y && \
sudo apt install mesa-common-dev -y && \
sudo apt install libglew-dev -y && \
sudo apt-get install binutils -y && \
sudo apt install libglm-dev -y && \
sudo apt install libgl-dev -y && \
sudo apt install libglew-dev -y && \
sudo apt install libglfw3-dev -y && \
sudo apt install libglm-dev -y && \
sudo apt install libglm-doc -y && \

# Some useful libraries

# sudo apt install zlibc && \
# sudo apt install libxml2-utils && \
# sudo apt install libtinyxml2-dev && \
# sudo apt install zlib1g-dev && \
# sudo apt install libxml2-dev && \
# sudo apt install libtinyxml2-dev && \
# sudo apt install libsigc++-2.0-dev && \
# sudo apt install libsigc++-2.0-doc && \
# sudo apt install libssl-dev && \
# sudo apt install libssl-doc && \
# sudo apt install libsdl2-dev && \
# sudo apt install libasound2-doc && \
# sudo apt install libsfml-dev && \
# sudo apt install libsfml-doc && \

# Development Library and Toolkit for FLTK 1.3 GUI Library

sudo apt install libfltk1.3-dev -y && \
sudo apt install libfltk1.3-compat-headers -y && \
sudo apt install pinentry-fltk -y && \

# AI and Machine Learning

# Dlib
# sudo apt install libdlib-dev && \
# OpenCV
# https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html
# https://opencv.org
# TensorFlow
# https://www.tensorflow.org/install/lang_c

# Scientific computing
# https://www.findbestopensource.com/product/kthohr-stats
# https://github.com/kthohr/stats
# https://www.thefreecountry.com/sourcecode/mathematics.shtml

# sudo apt install libgsl-dev && \
# sudo apt install gsl-ref-psdoc && \
# sudo apt install gsl-doc-pdf && \
# sudo apt install gsl-doc-info && \
# sudo apt install gsl-ref-html && \
# sudo apt install libarmadillo-dev \

# Other libraries to consider:

# posix
# libcerror

# =================================================================
# c-c-plus-plus-common-libraries (END)
# =================================================================


# =================================================================
# cpplint
# =================================================================
# https://pypi.org/project/cpplint/

pip3 install cpplint && \

# https://github.com/JossWhittle/FlintPlusPlus
# Create a symbolic link:
cd ~/  && \
rm -rf ~/FlintPlusPlus && \
git clone https://github.com/JossWhittle/FlintPlusPlus.git  && \

rm -rf ~/FlintPlusPlus/.git  && \
rm -rf ~/FlintPlusPlus/bin/deb32  && \
rm -rf ~/FlintPlusPlus/bin/raspberry\ pi/  && \
rm -rf ~/FlintPlusPlus/bin/Win32  && \
rm -rf ~/FlintPlusPlus/bin/x64  && \
rm -rf ~/FlintPlusPlus/debian  && \
rm -rf ~/FlintPlusPlus/flint  && \
rm ~/FlintPlusPlus/.gitattributes ~/FlintPlusPlus/.gitignore ~/FlintPlusPlus/flint++.1 && \

# uncomment the line below before running this automated installation script for the second time

# sudo rm /usr/bin/flint++ && \

sudo ln -s ~/FlintPlusPlus/bin/deb64/flint++ /usr/bin/flint++ && \
chmod +x ~/FlintPlusPlus/bin/deb64/flint++ && \
cd ~/  && \

# Ref: https://github.com/mcandre/linters

# =================================================================
# cpplint (END)
# =================================================================


# =================================================================
# Conky-Resource-Monitor-Gadget
# =================================================================

# https://ubuntuhandbook.org/index.php/2021/06/install-blender-2-93-ppa-ubuntu-20-04/

sudo apt install conky-all -y && \

# =================================================================
# Conky-Resource-Monitor-Gadget (END)
# =================================================================


# =================================================================
# orphaned-package-cleaners
# =================================================================

# https://linoxide.com/linux-how-to/remove-orphaned-packages-ubuntu/
# Simply run 'deborphan' (without quotes) to get an overview of the
# leftover packages, then uninstall them manually.

sudo apt install deborphan -y && \

# =================================================================
# orphaned-package-cleaners (END)
# =================================================================


# =================================================================
# LATeX-Equation-Editor-Base
# =================================================================

# WYSIWYG LATeX Equation Editors

# References:
# https://equalx.sourceforge.io/
# https://www.thrysoee.dk/laeqed/

sudo apt install texlive-base -y && \
sudo apt install texlive-latex-base -y && \
sudo apt install dvipng -y && \
sudo apt install dvisvgm -y && \
sudo apt install ghostscript -y && \

# Pandoc:
sudo apt install pandoc -y && \

sudo apt install equalx -y && \
# JVM Runtime is required by Laeqed
sudo apt install default-jre -y && \

# On MS Windows, use MiKTeX (https://miktex.org/),
# Ghostscript (https://www.ghostscript.com/),
# EqualX (https://equalx.sourceforge.io/),
# Laeqed (https://www.thrysoee.dk/laeqed/).

# =================================================================
# LATeX-Equation-Editor-Base (END)
# =================================================================


# =================================================================
# ocr-tesseract-install
# =================================================================

# https://linuxhint.com/install_tesseract_ocr_linux/
# https://linuxhint.com/install-tesseract-ocr-linux/

# installation:

sudo apt install tesseract-ocr -y && \
sudo apt install imagemagick -y && \

# language pack installation:

# For Bengali
# sudo apt install tesseract-ocr-ben

# For Hindi
# sudo apt install tesseract-ocr-hin

# get a hint of all supported languages
# apt-cache search tesseract-

# usage:
# tesseract image_name.jpg image_name output -l eng
# tesseract dcr240.jpg dcr240 output -l eng

# extract texts from all image files in a directory
# for i in *; do tesseract "$i" "output-$i" -l eng; done;

# =================================================================
# ocr-tesseract-install (END)
# =================================================================


# =================================================================
# smartcardsupport
# =================================================================

sudo apt install libccid -y && \
sudo apt install opensc-pkcs11 -y && \
sudo apt install pcsc-tools -y && \
sudo apt install pcscd -y && \
sudo apt install opensc -y && \

# systemctl start pcscd && \
# systemctl enable pcscd && \
# systemctl status pcscd && \
# lsusb && \
# pcsc_scan && \
# opensc-tool -l && \

# =================================================================
# smartcardsupport (END)
# =================================================================


# =================================================================
# site blocker
# =================================================================

sudo apt install nscd -y && \

# =================================================================
# site blocker (END)
# =================================================================


# =================================================================
# YouTube-SMTube
# =================================================================

# SMTube
# YouTube video playback without Flash Player.
# Helps to play YouTube videos on low-end machines.

# http://www.smtube.org/
# "SMTube - YouTube browser for SMPlayer.
# SMTube is an application that allows to browse, search and play YouTube videos.
# Videos are played back with a media player (by default SMPlayer)
# instead of a flash player, this allows better performance,
# particularly with HD content."

# yes | echo 'deb http://download.opensuse.org/repositories/home:/smplayerdev/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:smplayerdev.list && \
# yes | curl -fsSL https://download.opensuse.org/repositories/home:smplayerdev/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_smplayerdev.gpg > /dev/null && \
# sudo apt update -y && \
# sudo apt install youtube-dl -y && \
# sudo apt install smtube -y \

# https://www.smtube.org/

# yes | sudo add-apt-repository ppa:rvm/smplayer && \
# sudo apt update -y && \
sudo apt install smtube smplayer -y && \


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


# =================================================================
# YouTube-SMTube (END)
# =================================================================

# VeraCrypt Xubuntu 22.04
# https://linuxhint.com/install-use-veracrypt-ubuntu-22-04/

yes | sudo add-apt-repository ppa:unit193/encryption && \
sudo apt update -y && \
sudo apt install veracrypt -y \


echo "--------------------------------------"
echo "Done!"
echo "--------------------------------------"

