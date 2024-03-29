#!/bin/bash

# Oracle VirtualBox on Linux HOST (Bare Metal) installation guide:
# Ref: https://linuxize.com/post/how-to-install-virtualbox-on-ubuntu-20-04/

sudo apt update && \
sudo apt install virtualbox virtualbox-ext-pack \

## Tweak:
# 1. Run VirtualBox.
# 2. Click on the New Button.
# 3. Give your Virtual Machine a name.
# 4. a) (VM) Type: Microsoft Windows. b) Version: Windows 10 (64-bit).
# 5. Click on the Next button.
# 6. Allocate Memory (RAM) (3072 or 4096 MB).
# 7. Choose 'Create a Virtual Hard Disk Now'. Click on the Create Button.
# 8. Hard Disk File Type: VDI (VirtualBox Disk Image) -> Next.
# 9. Storage on Physical Hard Disk: Dynamically Allocated -> Next.

# 10. File Location and Size:
#  Location: /home/yourusername/VirtualBox VMs/yourvmname/yourvmname.vdi
#  (Choose the default location).
#  Size: 25.00 GB. OK & Exit.

# 11. Click on the Settings Button.
# a) General -> Advanced -> Shared Clipboard + Drag'n'Drop -> Bidirectional.
# b) System -> Processor -> Processor(s) -> 2,4,8 (depending on your
#    actual CPU). Extended Features -> Enable PAE/NX (Uncheck the
#    PAE/NX option if it creates any trouble in the future.)
# c) Display -> Acceleration -> Enable 3D Acceleration.
# d) Shared Folder from Linux Host (Bare Metal) to Windows Guest (VM):
#    Storage -> Select the Empty CD ROM Drive -> Attributes ->
#       Optical Drive -> Choose a Disc File -> Select the ISO from
#       your file manager.
# e) Shared Folder -> On the Top Right Corner, find a folder icon
#      with a plus sign. Click on the button 'Adds new shared folder'.
# f) Create a Shared folder on your Actual
#      Machine (the Linux HOST). Copy the path to that folder.
# g) Folder Path: Other -> Select the shared folder from the
#      file browser.  Select Automount. OK.
# h) Press OK to Close the Settings Dialogue.

## Windows 10 Guest Installation:
# 12. Click on the Start Button and Install Windows 10. Complete the
#        installation.
# 13. From the VirtualBox Menu Bar, Devices -> Optical Drives ->
#    Eject/Remove the Windows 10 ISO.

## VBox Guest Addition:
# 14. Devices (Menu) -> Insert Guest Additions CD Image...
# a) VBox will request you to download the required setup image files.
#      Allow VBox to download what it tries to download and install
#      the Guest Additions.
# b) On the Guest VM (Windows), find 'This PC'. You'll find
#    the Guest Additions on
#    a Virtual Drive. CD Drive (D): VirtualBox Guest Additions.
# c) Find the executable 'VBoxWindowsAdditions.exe'. Double-click
#     and install the Guest Additions. Reboot the VM (the
#      Windows guest) when prompted.
# d) Now you're all set.

# NOTE: Without the Guest Additions CD, you won't have access to the
#         shared folder, and the Bidirectional
#         Clipboard will also not work.


## Install some basic Windows utilities:
# Since you're not going to use an antivirus application
# to keep the Windows VM running at a decent speed, you'll
# have to block the internet. TinyWall Firewall will
# let you block the internet connection. Anytime you can
# change the firewall mode to connect to
# the internet. The default Windows text editor is
# frustrating. It can't handle Linux Line Endings and Unicode
# characters properly. Notepad2-mod
# will solve the problem. 7-Zip will be very useful
# to extract compressed archives straight
# from the Windows VM.

# TinyWall Firewall:
# https://tinywall.pados.hu/

# Notepad2-mod:
# https://xhmikosr.github.io/notepad2-mod/

# 7-Zip:
# https://www.7-zip.org/
# Now you're almost ready to use the VM.


# Try a few Windows exclusive programs:
# I'll face too many troubles without
# a few Windows programs. Unfortunately, those
# programs won't run under WINE either.
# Here's what I needed:

# Nikon NX Studio:
# https://downloadcenter.nikonimglib.com/en/download/sw/208.html
# https://imaging.nikon.com/lineup/software/nx_studio/

# BluffTitler:
# https://www.outerspace-software.com/blufftitler

# Create a backup of the VM.
# Backup the VM's Folder (not the shared one).
# If you mess up the guest Windows machine at some point,
# you will get a fresh copy of the guest VM from that backup.

# Just don't expect a VM to run as smooth
# as a real machine. Know that it
# somehow works. A lot of games
# won't perform well inside a VM because they need
# access to a real machine with
# a dedicated GPU. Some of them
# will simply refuse to get installed.

# Use the newly set up VM if it works for you.

# Thanks!


