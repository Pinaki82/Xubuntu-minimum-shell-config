#!/bin/bash

sudo apt install build-essential && \
sudo apt install tcc && \
sudo apt install patch && \
sudo apt install make && \
sudo apt install diffutils && \
sudo apt install llvm && \
sudo apt install clang && \
sudo apt install clangd && \
sudo apt install clang-tidy && \
sudo apt install clang-tools && \
sudo apt install lld && \
sudo apt install libomp-dev && \
sudo apt install curl && \
sudo apt install python3-pip && \
python -m pip install --upgrade pip && \
pip install flawfinder && \
# https://github.com/friendlyanon/cmake-init
pip install cmake-init && \
yes | sudo apt update && \
yes | sudo apt list --upgradable && \
yes | sudo apt upgrade && \
yes | sudo apt update && \
yes | sudo apt install -f && \
sudo apt install nodejs && \
sudo apt install jq && \
# Description: package manager for Node.js
# (npm: Unmet dependencies)

sudo apt install npm && \

# Update Node.js with NPM (Node Package Manager)
# https://phoenixnap.com/kb/update-node-js-version

sudo apt install npm && \
npm cache clean -f && \
sudo npm install -g n && \
sudo n stable && \

# Description: blackbox testing of Unix command line programs
# cmdtest black box tests Unix command line tools. Roughly, it is given a
# script, its input files, and its expected output files. cmdtest runs
# the script, and checks the output is as expected.
sudo apt install cmdtest && \
sudo apt install yarn && \
# https://pnpm.io/installation
curl -fsSL https://get.pnpm.io/install.sh | sh -  && \
sudo apt install cdecl && \
sudo apt install cutils && \
sudo apt install kitty && \
sudo apt install sakura && \
# sudo apt install gnome-terminal && \
sudo apt install tree && \
sudo apt install mc && \
sudo apt install xclip && \
sudo apt install vim-gtk && \
# sudo apt install kate && \
sudo apt install cppcheck && \
sudo apt install cppcheck-gui && \
sudo apt install splint && \
sudo apt install cmake-gui && \
sudo apt install cmake && \
sudo apt install wget && \
sudo apt install unzip && \
sudo apt install git && \
sudo apt install git-lfs && \

# https://softwarerecs.stackexchange.com/questions/30351/visualizing-git-diff-linux#30352
# gitk & git-gui added to installation script.
# Both can show results graphically when launched from the directory
# containing .git folder. These are the simplest alternative
# to dealing with the command-line diff/merge/commit/stage/push tools.
# Can be supplementary utilities even when a CUI is preferred over the GUI.

sudo apt install gitk && \
sudo apt install git-gui && \
sudo apt install giggle && \

# GUI frontends for Git Version Control System:
# Gitg is pretty barebone at the moment. Git Cola comes packed with all the
# bells and whistles needed to control Git from a Graphical User Interface,
# however, it's a little slower. There are many Git GUI frontends out there,
# of them, Git Cola holds nothing back from anyone,
# from a more freedom friendly perspective.
# For example, there's a free version of a Git GUI client that doesn't allow
# free users to deal with private repositories. Git Cola is neatly comparable to
# advanced GUI clients of the Git VCS like Sourcetree, GitKraken, SmartGit,
# GitHub Desktop, Gitbox, Tower and others.
# --------
# 'qgit' is another excellent Git GUI frontend. In some aspects, it's
# more flexible than Git Cola.
# --------
# I wouldn't recommend any of the GUI frontends of Git since they all come with
# some inadequacies, thus, all those Git frontends are not yet ready to fully
# replace Git's terminal interface.
# GUI Git programs can be used for viewing code history etc.
# They can quickly draw an overview of a repository and track the history of
# changed files at a glance.
# Install any of the following if you are in absolute need of a GUI Git frontend.

# sudo apt install gitg && \
# sudo apt install qgit && \
# sudo apt install git-cola && \

# Flowchart diagram designing program
# https://wiki.gnome.org/Apps/Dia
# (Windows) http://dia-installer.de/index.html.en
# sudo apt install dia && \
# Dia2Code is a small utility used to generate code from a Dia diagram
# http://dia2code.sourceforge.net/index.html
# sudo apt install dia2code && \

# Below are some (terminal-based) utilities for adding more
# functionalities to the existing Git installation

sudo apt install git-extras && \
sudo apt install git-flow && \
sudo apt install diffutils && \
sudo apt install diffstat && \

# Debuggers, code profilers, memory leak testers, build tools,
# code formatting applications and more

sudo apt install ddd && \
sudo apt install valgrind && \
sudo apt install cgdb && \
sudo apt install astyle && \
sudo apt install universal-ctags && \
sudo apt install autoconf && \
sudo apt install pkg-config && \
sudo apt install libx11-dev && \
sudo apt install libglib2.0-doc && \
sudo apt install libtool && \
sudo apt install autoproject && \
sudo apt install autogen && \
sudo apt install autotools-dev && \
sudo apt install automake && \
sudo apt install m4 && \
sudo apt install make && \
sudo apt install ninja-build && \
sudo apt install meld && \
# 'fldiff' cannot perform merge operations
# sudo apt install fldiff && \

# "kdiff3" and "kompare" both are efficient Diff Tools with advanced features.
# While "meld" is way too slow and lags most of the time on larger files,
# it has a rich set of features and it's very easy to use.
# So, "meld" cannot be discarded easily.
# And, "fldiff" doesn't allow merging. With "fldiff",
# you can see the differences, not merge them.
# "meld" is fine for comparing small files side-by-side,
# also it has a relatively smaller footprint.
# Among "kdiff3" and "kompare", "kdiff3" is still a preferred choice of many.
# "kdiff3" and "kompare" occupy mostly the same amount of storage space.
# "kompare" is around 110 MB, and "kdiff3" is 96 MB (approx).
# 'kompare' is slightly clumsy.
# Only install what you need.

# sudo apt install kdiff3 && \
# sudo apt install kompare && \

# Markdown to HTML etc.

sudo apt install markdown && \

# Text search utilities

sudo apt install regexxer && \
# sudo apt install vizigrep && \
sudo apt install searchmonkey && \


# CuteCOM: GUI Serial Monitor
# https://www.pragmaticlinux.com/2021/11/how-to-monitor-the-serial-port-in-linux/
sudo apt install cutecom && \

# Req. by PlatformIO CORE CLI

yes | sudo apt autoremove brltty && \
# or,
# sudo apt purge --auto-remove brltty && \

yes | sudo apt update && \
# https://www.pragmaticlinux.com/2021/11/how-to-monitor-the-serial-port-in-linux/
sudo apt install -y cutecom && \
# https://askubuntu.com/questions/786367/setting-up-arduino-uno-ide-on-ubuntu
# https://askubuntu.com/questions/781571/how-to-identify-devices-connected-to-serial-port
# https://unix.stackexchange.com/questions/390184/dmesg-read-kernel-buffer-failed-permission-denied
# https://0xsuk.github.io/posts/2022-07-19-how-to-install-ch340-on-ubuntu-22.04/
sudo apt install -y hwinfo && \
sudo apt install -y setserial && \
pip install esptool \
# sudo usermod -a -G plugdev $USER  && \
# sudo usermod -a -G dialout $USER && \
# https://docs.platformio.org/en/latest/core/userguide/device/cmd_monitor.html#cmd-device-monitor
# https://docs.platformio.org/en/latest/core/installation/udev-rules.html
# curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules  && \
# sudo service udev restart && \
# sudo udevadm control --reload-rules && \
# sudo udevadm trigger && \
# sudo usermod -a -G dialout $USER && \
# sudo usermod -a -G plugdev $USER && \
# sudo reboot
# sudo chmod a+rw /dev/ttyUSB0 && \
# sudo chmod a+rw /dev/ttyS0 && \
# setserial -g /dev/ttyS0 && \
# setserial -g /dev/ttyS[0123] && \
# sudo sysctl kernel.dmesg_restrict=0 && \
# sudo reboot
# echo "ls -l /dev/ttyUSB* /dev/ttyACM* ..." && \
# ls -l /dev/ttyUSB* /dev/ttyACM* && \
# ls -l /dev/ttyUSB* /dev/ttyACM*
# ls: cannot access '/dev/ttyACM*': No such file or directory
# crw-rw-rw- 1 root dialout 188, 0 Mar 20 01:08  /dev/ttyUSB0
# hwinfo --short
#
#                        Serial controller
#   /dev/ttyUSB0         QinHeng Electronics HL-340 USB-Serial adapter
# echo "dmesg | egrep --color 'serial|ttyS' ..." && \
# dmesg | egrep --color 'serial|ttyS' && \
# echo "dmesg | grep tty ..." && \
# dmesg | grep tty && \
# echo "dmesg | tail -f ..." && \
# dmesg | tail -f && \
# echo "hwinfo --short ..." && \
# hwinfo --short && \
# echo "lsusb ..." && \
# lsusb && \
# echo "ls -l /dev/tty* ..." && \
# ls -l /dev/tty* && \
# echo "dmesg | grep tty ..." && \
# dmesg | grep tty \
#                                                  For PlaltformIO

