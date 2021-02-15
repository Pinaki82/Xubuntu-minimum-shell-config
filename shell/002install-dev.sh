#!/bin/bash

sudo apt install build-essential && \
sudo apt install llvm && \
sudo apt install clang && \
sudo apt install clang-tidy && \
sudo apt install clang-tools && \
sudo apt install libomp-dev && \
sudo apt install cdecl && \
sudo apt install cutils && \
sudo apt install kitty && \
sudo apt install tree && \
sudo apt install mc && \
sudo apt install xclip && \
# https://itsfoss.com/vim-8-release-install/
sudo add-apt-repository ppa:jonathonf/vim && \
sudo apt update && \
sudo apt install vim-gtk && \
sudo apt install cppcheck && \
sudo apt install cppcheck-gui && \
sudo apt install splint && \
sudo apt install cmake-gui && \
sudo apt install cmake && \
sudo apt install wget && \
sudo apt install unzip && \
sudo apt install git && \
sudo apt install gitg && \

# https://softwarerecs.stackexchange.com/questions/30351/visualizing-git-diff-linux#30352
# gitk & git-gui added to installation script.
# Both can show results graphically when launched from the directory
# containing .git folder. These are the simplest alternative
# to dealing with the command-line diff/merge/commit/stage/push tools.
# Can be supplementary utilities even when a CUI is preferred over the GUI.

sudo apt install gitk && \
sudo apt install git-gui && \

sudo apt install ddd && \
sudo apt install valgrind && \
sudo apt install astyle && \
sudo apt install ctags && \
sudo apt install autoconf && \
sudo apt install pkg-config && \
sudo apt install libx11-dev && \
sudo apt install libglib2.0-doc && \
sudo apt install libtool && \
sudo apt install autoproject && \
sudo apt install autogen && \
sudo apt install autotools-dev && \
sudo apt install automake && \
sudo apt install ninja-build && \
sudo apt install meld && \
sudo apt install fldiff && \

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
# Only install what you need.

# sudo apt install kdiff3 && \
# sudo apt install kompare && \

sudo apt install regexxer && \
sudo apt install vizigrep && \
sudo apt install searchmonkey \

