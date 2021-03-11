#!/bin/bash

# https://linoxide.com/linux-how-to/remove-orphaned-packages-ubuntu/

sudo apt remove --purge `deborphan`
# sudo apt remove --purge `deborphan --exclude=package_name`
# sudo apt remove --purge `deborphan --exclude=libsensors-applet-plugin0:amd64`

