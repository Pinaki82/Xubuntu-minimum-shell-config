#!/bin/bash

# xhow to restart graphical shell in xubuntu
# https://www.makeuseof.com/tag/refresh-linux-desktop-without-rebooting/

xfconf-query -c xfce4-panel -p / -R -r && \
xfce4-panel -r \
