#!/bin/bash


# Clean up the WhiteSur related files from your Downloads folder
# if you have previously executed this script.
#
# Find the GUI tweaking at the bottom of the file.
#
cd ~/
sudo apt install trash-cli -y &&\

# sudo apt install libzeitgeist-1.0-1 -y &&\

# We won't be using AppMenu XFCE Plugin anymore.
# Commented out

# sudo apt install xfce4-appmenu-plugin -y &&\
# sudo apt install appmenu-gtk-module-common -y &&\
# sudo apt install appmenu-registrar -y &&\
# xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true &&\
# xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true &&\

sudo apt install rofi -y &&\

# Related to AppMenu

# sudo apt install vala-panel-appmenu -y &&\
# sudo apt install vala-panel-appmenu-common -y &&\
# xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true &&\
# xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true &&\

sudo apt install plank -y &&\
sudo apt install conky -y &&\

# plank --preferences &&\

# We won't use Panther-Launcher either.

#
# ########################
#
# panther-launcher:

# cd ~/ &&\
# cd Downloads/ &&\
# wget -c https://www.rastersoft.com/descargas/panther_launcher/panther-launcher-xenial_1.12.0-ubuntu1_amd64.deb &&\
# sudo apt install libzeitgeist-1.0-1 -y &&\
# sudo dpkg -i panther-launcher-xenial_1.12.0-ubuntu1_amd64.deb &&\

# WhiteSur-gtk-theme:

cd ~/ &&\
cd Downloads/ &&\
sudo apt install git -y &&\
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git &&\
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git &&\
git clone https://github.com/vinceliuice/WhiteSur-cursors.git &&\
cd WhiteSur-gtk-theme/ &&\
chmod +x install.sh &&\
./install.sh &&\

# Other icon themes:
#
# Moka
# https://snwh.org/moka
# yes | sudo add-apt-repository -u ppa:snwh/ppa &&\
# yes | sudo apt update &&\
# sudo apt install moka-icon-theme -y &&\
#
# Papirus icon theme for Linux
# https://github.com/PapirusDevelopmentTeam/papirus-icon-theme#installation
# yes | sudo add-apt-repository ppa:papirus/papirus &&\
# yes | sudo apt update &&\
# sudo apt install papirus-icon-theme -y &&\
# Paper
# https://snwh.org/paper/download
# yes | sudo add-apt-repository -u ppa:snwh/ppa &&\
# yes | sudo apt update &&\
# sudo apt install paper-icon-theme -y &&\
#
# Please install the following icon themes manually, if you like.
# BeautyLine icon theme
# https://www.xfce-look.org/s/XFCE/p/1425426 &&\
# vimix-icon-theme
# https://github.com/vinceliuice/vimix-icon-theme &&\
#
# Other GUI themes:
# Please install the following GUI themes manually.
#
# Theme Big Sur
# https://www.xfce-look.org/p/1405530/ &&\
# Desert-XFCE-4.16 Edition
# https://www.xfce-look.org/p/1482698/ &&\
# Sweet
# https://www.xfce-look.org/p/1253385/ &&\
# Mayu-Dark
# https://www.xfce-look.org/s/XFCE/p/1408765/ &&\
# PRO-Dark-XFCE-Edition
# https://www.xfce-look.org/p/1207818/ &&\
# Prof-XFCE-theme
# https://www.xfce-look.org/p/1334420/ &&\
# (Use the latest version only.
#   There are two variants, the light theme & the dark one.)
# Mc-OS CTLina XFCE
# https://www.xfce-look.org/p/1326265/ &&\

# Reset the XFCE panel:
xfce4-panel -r &&\

cd ~/ &&\
cd Downloads/ &&\
cd WhiteSur-icon-theme/ &&\
chmod +x install.sh &&\
./install.sh --black &&\

cd ~/ &&\
cd Downloads/ &&\
cd WhiteSur-cursors/ &&\
chmod +x install.sh &&\
./install.sh &&\
cd ~/ &&\
cd Downloads/ &&\

# We won't use xpple_menu. The default logout button looks fine.

#
# ###########################################################
# ###########################################################
# Download xpple_menu.zip from pling.com via Firefox browser:
# ###########################################################
# ###########################################################
# echo "Download xpple_menu.zip from pling.com via Firefox browser..."
# sleep 3
# firefox https://www.pling.com/p/1529470/ &&\
# cd ~/ &&\
# cd Downloads/ &&\
# mkdir xpple &&\
# unzip xpple_menu.zip -d xpple &&\
# cd xpple &&\
# mkdir ~/.config/menu &&\
# cp -r xpple.menu ~/.config/menu/ &&\
# cp -r applications/. ~/.local/share/applications/ &&\
#

# XFCE Big Sur additional config files: Install if you use the Big Sur GUI Theme.
# cd ~/ &&\
# cd Downloads/ &&\
# wget -c https://www.opencode.net/lsteam/xfce-big-sur-setup-file/-/archive/master/xfce-big-sur-setup-file-master.zip &&\
# unzip xfce-big-sur-setup-file-master.zip -d xfce-big-sur-setup-file-master &&\
# cd xfce-big-sur-setup-file-master/xfce-big-sur-setup-file-master/ &&\
# unzip update-xfce-bigsur.zip &&\
# cd update-xfce-bigsur &&\
#
# https://www.2daygeek.com/copy-files-folders-linux-cp-command/
# https://stackoverflow.com/questions/14922562/how-do-i-copy-folder-with-files-to-another-folder-in-unix-linux
# cp -a path_to_source/. path_to_destination/
#
# cp -r rofi/. ~/.config/rofi/ &&\
# chmod +x ~/.config/rofi/launchers/misc/ &&\
# cp -r icons/. ~/.local/share/icons/ &&\
#
# echo "If the folder ~/Pictures/WhiteSur exists and you are not running this script for the first time, rename the directory manually (keep a backup of it)."
# sleep 5
#
# mkdir ~/Pictures/WhiteSur &&\
# cp -r ~/Downloads/xfce-big-sur-setup-file-master/xfce-big-sur-setup-file-master/update-xfce-bigsur/wallpapers/. ~/Pictures/WhiteSur &&\
#
# trash panther-launcher-xenial_1.12.0-ubuntu1_amd64.deb &&\
# trash WhiteSur-cursors/ &&\
# trash WhiteSur-gtk-theme/ &&\
# trash WhiteSur-icon-theme/ &&\
# trash xpple/ &&\
# trash xpple_menu.zip &&\
# trash xfce-big-sur-setup-file-master/ &&\
# trash xfce-big-sur-setup-file-master.zip \
##### trash -v ~/Pictures/WhiteSur &&\ ##(temp)
#
cd ~/ \
#
#
#
# List of Wallpapers:
# ------------------------------------------------------------
# https://www.pling.com/p/1413279/
# https://www.xfce-look.org/s/XFCE/p/1483702/
# https://www.xfce-look.org/s/XFCE/p/1483700/
# https://www.xfce-look.org/s/XFCE/p/1483683/
# https://www.xfce-look.org/s/XFCE/p/1483184/
# https://www.xfce-look.org/s/XFCE/p/1482727/
# https://www.xfce-look.org/s/XFCE/p/1406556/
# https://www.xfce-look.org/s/XFCE/p/1368402/
# https://www.xfce-look.org/s/XFCE/p/1381425/
# https://www.xfce-look.org/s/XFCE/p/1347205/
# https://www.xfce-look.org/s/XFCE/p/1361063/
# https://www.xfce-look.org/s/XFCE/p/1334579/
# https://www.xfce-look.org/s/XFCE/p/1361060/
# https://www.xfce-look.org/s/XFCE/p/1306939/
# ------------------------------------------------------------
#
#
#
#
# We won't use Panther Launcher. It's unmaintained and lags behind Xubuntu's Whisker Menu.
# panther_launcher 
# Ref: https://wiki.archlinux.org/title/Rofi
# rofi -combi-modi window,drun,ssh -theme solarized -font "hack 10" -show combi -icon-theme "Papirus" -show-icons
#
#
# Ref 1: https://youtu.be/uvvoJU69uNo
# Linux Scoop - UPDATE : How to Customize Your Xfce Desktop Look Like macOS Big Sur | Version 2.0
#
# Ref 2: https://youtu.be/PK07RS8pUfo
# SkillsBuild Training - How to Create a macOS Big Sur Look Alike with Xfce Desktop
#
# Ref 3: https://youtu.be/bqnZQd4amtQ
# ITdude - Customize Your Xfce Desktop Look Like MacOS Big Sur in hindi | azvish
#
# Ref 4: https://youtu.be/oQ8RWtD3MTQ
# Linux Scoop - Customize Your Xfce Desktop Look Like MacOS Big Sur | Version 1.0
#
# Most of the configuration has been taken from the LinuxScoop's YouTube video https://youtu.be/uvvoJU69uNo.
# Although, a few programs and settings are intentionally discarded to keep
# the installation lightweight.
# Also, some of the packages are unavailable in the Ubuntu repository.
#
# The following programs will not be included:
#
# Ulauncher will not be included. A custom configuration of the Rofi launcher serves
# almost the same purpose. Synapse can be a consideration, but here, Rofi acts as
# two different launchers replacing anything like Ulauncher or Synapse.
# Rofi also acts as the application finder. To save resources, any other launcher
# program will not be included.
#
# 'LightDM-Webkit2-Greeter' and 'comice-control-center': The former is not available in
# the Ubuntu Linux repo. Also, any fancy login page isn't the right choice for
# making a 'lightweight yet aesthetically pleasant environment'. With enough
# efforts and time, it's not impossible to port and install
# lightDM-webkit2-greeter to Ubuntu.
# comice-control-center: It didn't work. Who needs a fancy looking clone of Apple's
# 'Sound-WiFi-Bluetooth-LAN-Hotspot' buttons? To reduce complexity and save resources,
# 'LightDM-Webkit2-Greeter' and 'comice-control-center' will be ignored.
#
# Nautilus File Manager: Nautilus looks slightly better, but the default
# Thunar File Manager that comes with XFCE can easily be configured to a great
# extent to do anything file operation related. There's no point in having
# another file manager that does the same thing. Nautilus will be discarded.
#
#
# ::GUI Customisations and Setting::
#
# https://forums.linuxmint.com/viewtopic.php?t=308147
# settings > window manager tweaks > accessibilty > check "Automatically tile wondows when moving towards the screen edge"
