#!/bin/bash

sudo dpkg --add-architecture i386 && \
sudo apt install wine64 && \
winecfg \

