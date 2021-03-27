#!/bin/bash


### Perform a Rootkit scan:

### USERNAME must be replaced by the actual username.
### Remember that the Search & Replace function in your text editor is your friend.

### 1. Scan with chkrootkit:

# https://www.tecmint.com/scan-linux-for-malware-and-rootkits/
# https://www.makeuseof.com/tag/free-linux-antivirus-programs/
# https://linuxhint.com/install_chkrootkit/
# https://linuxhint.com/detect_linux_system_hacked/
# sudo apt install chkrootkit
# sudo nano /etc/chkrootkit.conf
# RUN_DAILY="true"

sudo chkrootkit >> "/home/USERNAME/chkrootkit-report.txt" && \

### 2. Scan with rkhunter:

# https://www.tecmint.com/install-rootkit-hunter-scan-for-rootkits-backdoors-in-linux/
# https://wiki.archlinux.org/index.php/Rkhunter
# https://kifarunix.com/how-to-install-rkhunter-rootkit-hunter-on-ubuntu-18-04/
# sudo apt install rkhunter
# DB update:
# sudo rkhunter --update

sudo rkhunter --propupd && \
sudo rkhunter --check --sk --report-warnings-only >> "/home/USERNAME/rkhunter-report.txt" && \

# https://askubuntu.com/questions/250290/how-do-i-scan-for-viruses-with-clamav
# https://www.2daygeek.com/install-configure-clamav-antivirus-on-linux/
# https://sysnet-adventures.blogspot.com/2013/05/whitelist-files-with-clamav.html

# Prepare a list of directories you want to skip while performing a threat scan with ClamAV.
# ----------------------------------
# touch /home/USERNAME/ClamScanExclusionList.txt
# ----------------------------------
# 1. List directories.
# 2. Write one path per line.
# 3. Do not forget to surround the full path with a double-quote if the path contains anything other than a string of usual characters without spaces.
# 4. Directories like "/home/USERNAME/Browser Settings/", "/home/USERNAME/cinelerra-5.1-ub20.04-20201031.x86_64-static/", or "/home/USERNAME/.arduinoIDE/" must be guarded with a double-quote, while a path like /home/USERNAME/PortablePrograms/ doesn't need to be covered by a double-quote.
# 5. Never leave any empty line in 'ClamScanExclusionList.txt'.
# ----------------------------------
# Examples are:
# ----------------------------------
# File: ClamScanExclusionList.txt
# ----------------------------------
# Contents:
# ----------------------------------
# /home/USERNAME/Arduino/
# "/home/USERNAME/Browser Settings/"
# "/home/USERNAME/cinelerra-5.1-ub20.04-20201031.x86_64-static/"
# /home/USERNAME/Desktop/
# /home/USERNAME/Documents/
# "/home/USERNAME/.themes/"
# /home/USERNAME/Music/
# /home/USERNAME/Pictures/
# /home/USERNAME/Pictures/
# /home/USERNAME/PortablePrograms/
# /home/USERNAME/Public/
# /home/USERNAME/Templates/
# /home/USERNAME/Videos/
# /home/USERNAME/Xubuntu_General/
# "/home/USERNAME/.arduino15/"
# "/home/USERNAME/.arduinoIDE/"
# "/home/USERNAME/.config/"
# "/home/USERNAME/.dia/"
# "/home/USERNAME/.equalx/"
# "/home/USERNAME/.ffDiaporama/"
# "/home/USERNAME/.gnupg/"
# "/home/USERNAME/.grsync/"
# "/home/USERNAME/.hardinfo/"
# "/home/USERNAME/.hugindata/"
# "/home/USERNAME/.java/"
# "/home/USERNAME/.lyx/"
# "/home/USERNAME/.mplayer/"
# "/home/USERNAME/.pki/"
# "/home/USERNAME/.ssr/"
# "/home/USERNAME/.texlive2019/"
# "/home/USERNAME/.vim/"
# "/home/USERNAME/.vimbackup/"
# "/home/USERNAME/.vimdotcommon/"
# "/home/USERNAME/.vimdotlinux/"
# "/home/USERNAME/.vimdotwin/"
# "/home/USERNAME/.vimswap/"
# "/home/USERNAME/.vimundo/"
# "/home/USERNAME/.vimviews/"
# "/home/USERNAME/.local/share/icons/"
# "/home/USERNAME/.local/share/applications/"
# ----------------------------------


### For the complete report about a scan instance:

# sed -e 's/^/--exclude=/' "/home/USERNAME/ClamScanExclusionList.txt" | xargs clamscan --verbose -r -i --bell "/home/USERNAME/" >> "/home/USERNAME/report-file.txt"

### Create an entry to the report file only if the scanner finds a threat:

sed -e 's/^/--exclude=/' "/home/USERNAME/ClamScanExclusionList.txt" | xargs clamscan --verbose -r -i --bell "/home/USERNAME/" | grep FOUND >> "/home/USERNAME/report-file.txt" \

