#!/bin/bash

# safec: https://rurban.github.io/safeclib/doc/safec-3.6.0/index.html
# This library implements the secure C11 Annex K functions on top of most libc implementations, which are missing from them.

sudo apt install libsafec-dev && \

# Boost C++ libraries

sudo apt install libboost-all-dev && \

# OpenGL libraries

sudo apt install libglu1-mesa-dev && \
sudo apt install freeglut3-dev && \
sudo apt install mesa-common-dev && \
sudo apt install libglew-dev && \
sudo apt-get install binutils && \
sudo apt install libglm-dev && \
sudo apt install libgl-dev && \
sudo apt install libglew-dev && \
sudo apt install libglfw3-dev && \
sudo apt install libglm-dev && \
sudo apt install libglm-doc && \

# Some useful libraries

sudo apt install libbsd-dev && \
#    #include <bsd/string.h>
# pass -lbsd flag to the linker, like
# gcc -g -Wall -Wextra -pedantic -fstack-protector-all prog.c -o prog -lbsd

sudo apt install zlibc && \
sudo apt install libxml2-utils && \
sudo apt install libtinyxml2-dev && \
sudo apt install zlib1g-dev && \
sudo apt install libxml2-dev && \
sudo apt install libtinyxml2-dev && \
sudo apt install libsigc++-2.0-dev && \
sudo apt install libsigc++-2.0-doc && \
sudo apt install libssl-dev && \
sudo apt install libssl-doc && \
sudo apt install libsdl2-dev && \
sudo apt install libasound2-doc && \
sudo apt install libsfml-dev && \
sudo apt install libsfml-doc && \

# Development Library and Toolkit for FLTK 1.3 GUI Library

sudo apt install libfltk1.3-dev && \
sudo apt install libfltk1.3-compat-headers && \
sudo apt install pinentry-fltk && \

# Tk C programming GUI Library (Development Library)
# Tcl & Tk are components of the base distribution

sudo apt install tk-dev && \

# AI and Machine Learning

# Dlib
sudo apt install libdlib-dev && \
# OpenCV
# https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html
# https://opencv.org
# TensorFlow
# https://www.tensorflow.org/install/lang_c

# Scientific computing
# https://www.findbestopensource.com/product/kthohr-stats
# https://github.com/kthohr/stats
# https://www.thefreecountry.com/sourcecode/mathematics.shtml

sudo apt install libgsl-dev && \
sudo apt install gsl-ref-psdoc && \
sudo apt install gsl-doc-pdf && \
sudo apt install gsl-doc-info && \
sudo apt install gsl-ref-html && \
sudo apt install libarmadillo-dev \

# Other libraries to consider:

# posix
# libcerror

