#!/bin/bash

cd ~/  && \
rm -rf ~/Xubuntu-minimum-shell-config && \
mv ~/shell/operation-timeshift.sh ~/
git clone https://github.com/Pinaki82/Xubuntu-minimum-shell-config.git  && \
rm -rf ~/Xubuntu-minimum-shell-config/.git  && \
rm ~/Xubuntu-minimum-shell-config/README.md ~/Xubuntu-minimum-shell-config/LICENSE ~/Xubuntu-minimum-shell-config/.languagetool.cfg && \
rm -rf ~/Xubuntu-minimum-shell-config/Browser\ Settings/ \
rm -rf ~/Xubuntu-minimum-shell-config/HandBrake\ Video\ Converter\ Custom\ Encode\ Presets/ \
rm -rf ~/Xubuntu-minimum-shell-config/PortablePrograms/ \
rm -rf ~/Xubuntu-minimum-shell-config/snap/ \
rm -rf ~/Xubuntu-minimum-shell-config/Xubuntu_General/ \
# https://www.tecmint.com/sync-new-changed-modified-files-rsync-linux/
# https://unix.stackexchange.com/questions/501975/why-does-rsync-keep-skipping-the-directory-i-want-to-sync
rsync --archive --recursive --verbose --progress ~/Xubuntu-minimum-shell-config/shell/* ~/shell && \
# rsync --archive --recursive --verbose --progress ~/Tulu-C-IDE/.vimdotcommon// ~/.vimdotcommon &&\
# rsync --archive --recursive --update --verbose --progress ~/Tulu-C-IDE/.vimdotlinux// ~/.vimdotlinux &&\
rsync --archive --verbose --progress ~/operation-timeshift.sh ~/shell/operation-timeshift.sh && \
rm -rf ~/Xubuntu-minimum-shell-config \
rm ~/operation-timeshift.sh \

