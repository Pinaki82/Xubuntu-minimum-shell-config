#!/bin/bash


# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# WARNING: Do not install nala if you plan on using Airtel mobile data.
# Airtel Mobile: https://www.airtel.in/
# If you have already installed 'Nala' and cannot update your system
# using your mobile data, follow the instructions to uninstall 'Nala'
# at the end of this file.
# I tried both the USB Tethering and Wi-Fi Hotspot options.
# 'Nala' isn't at fault. The fault lies on the ISP's part.
# I still use 'Nala', just not with my mobile internet.
# Airtel's internet doesn't bode well with numerous Ubuntu
# repositories and a variety of PPAs.
# Joke aside, browsers on my machine refuse to
# connect to Project Gutenberg (https://www.gutenberg.org/) when I
# try to use the Airtel mobile internet.
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# sudo nala fetch
# Error: unable to connect to https://launchpad.net/ubuntu/+archivemirrors-rss
# Updating Package List
# │Ignored:   http://mirrors.edge.kernel.org/ubuntu jammy InRelease              │
# │Ignored:   http://in.archive.ubuntu.com/ubuntu jammy InRelease                │
# │Ignored:   https://brave-browser-apt-release.s3.brave.com stable InRelease    │
# │Ignored:   http://repository.spotify.com stable InRelease                     │
# │Ignored:   http://in.archive.ubuntu.com/ubuntu jammy-updates InRelease        │
# │Ignored:   http://in.archive.ubuntu.com/ubuntu jammy-backports InRelease      │
# │Ignored:   http://in.archive.ubuntu.com/ubuntu jammy-security InRelease       │
# │Ignored:   http://mirrors.edge.kernel.org/ubuntu jammy InRelease              │
# │No Change: https://deb.nodesource.com/node_16.x jammy InRelease               │
# │Ignored:   https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubun…│
# │Ignored:   https://shop.softmaker.com/repo/apt stable InRelease               │
# │Fetched 0 Bytes in 58s (0 Bytes/s)   
# sudo nala update
# Error: http://mirror.deace.id/ubuntu jammy InRelease
#   400  Bad Request [IP: 185.53.177.54 80]
# Error: http://in.archive.ubuntu.com/ubuntu jammy InRelease
#   Could not resolve 'in.archive.ubuntu.com'
# Error: https://brave-browser-apt-release.s3.brave.com stable InRelease
#   Could not resolve 'brave-browser-apt-release.s3.brave.com'
# Error: http://repository.spotify.com stable InRelease
#   Could not resolve 'repository.spotify.com'
# Error: http://in.archive.ubuntu.com/ubuntu jammy-updates InRelease
#   Could not resolve 'in.archive.ubuntu.com'
# Error: http://in.archive.ubuntu.com/ubuntu jammy-backports InRelease
#   Could not resolve 'in.archive.ubuntu.com'
# Error: http://in.archive.ubuntu.com/ubuntu jammy-security InRelease
#   Could not resolve 'in.archive.ubuntu.com'
# Error: http://mirrors.edge.kernel.org/ubuntu jammy InRelease
#   Could not resolve 'mirrors.edge.kernel.org' [IP: 3.33.239.250 80]
# ╭─ Updating Package List ────────────────────────────────────────────
                                  
# Everything works again once I connect the system
# to my wire-connected broadband.
# I tried to re-route the DNS queries to Cloudflare or even encrypt the
# DNS channel with the 'Protect DNS with DNSCRYPT' option in the
# "InviZible Pro" app.

# 1.1.1.1 + WARP: Safer Internet
# Cloudflare, Inc.
# https://play.google.com/store/apps/details?id=com.cloudflare.onedotonedotonedotone&hl=en

# https://f-droid.org/en/packages/pan.alexander.tordnscrypt.stable/

# Sometimes, changing the DNS will give you access to the wide
# range of Ubuntu repositories listed by 'Nala'. Sometimes it
# doesn't work at all.

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Nala Package Manager
# https://christitus.com/stop-using-apt/
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Add Repository

echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list \
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg \


# Install Nala on Ubuntu 22+

sudo apt update && sudo apt install nala \

# Update Mirrors for faster download

sudo nala fetch \

# Edit/delete mirrors

# sudo mousepad /etc/apt/sources.list.d/nala-sources.list

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Uninstall Nala
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# sudo apt purge --auto-remove nala
#
# Delete the files "/etc/apt/sources.list.d/nala-sources.list"
# and "/etc/apt/sources.list.d/nala-sources.list.save"
#
# sudo rm /etc/apt/sources.list.d/nala-sources.list
# sudo rm /etc/apt/sources.list.d/nala-sources.list.save
#
# Switch back to regular cable-connected broadband internet (Alliance, BSNL, Meghbala etc.).
# Disconnect your phone's USB from your computer.
# Turn off Wi-Fi Hotspot/USB Tethering on your phone.
# Reboot your machine.
#
# XFCE Whisker Menu -> Settings -> Software & Updates -> Ubuntu Software -> Download From ->>
# ->> Now, choose an appropriate server location.
#
# Run:
# sudo apt update
# sudo apt upgrade
#
# Reconnect to your phone's internet.
# CAUTION: Use your Airtel mobile data if you are in dire need.

## If you use your Airtel internet,
# you may have to see these lines after fighting
# with the terminal for half an hour:

# sudo apt update
# Hit:1 https://brave-browser-apt-release.s3.brave.com stable InRelease          
# Hit:2 http://in.archive.ubuntu.com/ubuntu jammy InRelease                      
# Hit:3 http://deb.volian.org/volian scar InRelease                              
# Hit:4 http://repository.spotify.com stable InRelease                           
# Hit:5 https://deb.nodesource.com/node_16.x jammy InRelease                     
# Ign:6 https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubuntu jammy InRelease
# Ign:7 https://shop.softmaker.com/repo/apt stable InRelease                     
# Ign:8 https://ppa.launchpadcontent.net/dupeguru/ppa/ubuntu jammy InRelease     
# Ign:9 http://in.archive.ubuntu.com/ubuntu jammy-backports InRelease            
# Get:10 http://in.archive.ubuntu.com/ubuntu jammy-security InRelease [110 kB]   
# Ign:7 https://shop.softmaker.com/repo/apt stable InRelease                     
# Ign:11 https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu jammy InRelease
# Ign:10 http://in.archive.ubuntu.com/ubuntu jammy-security InRelease            
# Ign:7 https://shop.softmaker.com/repo/apt stable InRelease                     
# Ign:12 https://ppa.launchpadcontent.net/kdenlive/kdenlive-stable/ubuntu jammy InRelease
# Err:7 https://shop.softmaker.com/repo/apt stable InRelease                     
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2a01:4f8:242:5891::2 443]
# Ign:13 https://ppa.launchpadcontent.net/kicad/kicad-6.0-releases/ubuntu jammy InRelease
# Ign:14 http://in.archive.ubuntu.com/ubuntu jammy-updates InRelease             
# Get:9 http://in.archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]  
# Get:10 http://in.archive.ubuntu.com/ubuntu jammy-security InRelease [110 kB]   
# Get:14 http://in.archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]    
# Get:15 http://in.archive.ubuntu.com/ubuntu jammy-updates/main amd64 c-n-f Metadata [11.4 kB]
# Ign:16 https://ppa.launchpadcontent.net/kicad/kicad-dev-nightly/ubuntu jammy InRelease
# Ign:17 https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu jammy InRelease
# Ign:18 https://ppa.launchpadcontent.net/ozmartian/apps/ubuntu jammy InRelease
# Ign:19 https://ppa.launchpadcontent.net/peek-developers/stable/ubuntu jammy InRelease
# Ign:20 https://ppa.launchpadcontent.net/unit193/encryption/ubuntu jammy InRelease
# Ign:6 https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubuntu jammy InRelease
# Ign:8 https://ppa.launchpadcontent.net/dupeguru/ppa/ubuntu jammy InRelease
# Ign:11 https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu jammy InRelease
# Ign:12 https://ppa.launchpadcontent.net/kdenlive/kdenlive-stable/ubuntu jammy InRelease
# Ign:13 https://ppa.launchpadcontent.net/kicad/kicad-6.0-releases/ubuntu jammy InRelease
# Ign:16 https://ppa.launchpadcontent.net/kicad/kicad-dev-nightly/ubuntu jammy InRelease
# Ign:17 https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu jammy InRelease
# Ign:18 https://ppa.launchpadcontent.net/ozmartian/apps/ubuntu jammy InRelease
# Ign:19 https://ppa.launchpadcontent.net/peek-developers/stable/ubuntu jammy InRelease
# Ign:20 https://ppa.launchpadcontent.net/unit193/encryption/ubuntu jammy InRelease
# Ign:6 https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubuntu jammy InRelease
# Ign:8 https://ppa.launchpadcontent.net/dupeguru/ppa/ubuntu jammy InRelease
# Ign:11 https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu jammy InRelease
# Ign:12 https://ppa.launchpadcontent.net/kdenlive/kdenlive-stable/ubuntu jammy InRelease
# Ign:13 https://ppa.launchpadcontent.net/kicad/kicad-6.0-releases/ubuntu jammy InRelease
# Ign:16 https://ppa.launchpadcontent.net/kicad/kicad-dev-nightly/ubuntu jammy InRelease
# Ign:17 https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu jammy InRelease
# Ign:18 https://ppa.launchpadcontent.net/ozmartian/apps/ubuntu jammy InRelease
# Ign:19 https://ppa.launchpadcontent.net/peek-developers/stable/ubuntu jammy InRelease
# Ign:20 https://ppa.launchpadcontent.net/unit193/encryption/ubuntu jammy InRelease
# Err:6 https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:8 https://ppa.launchpadcontent.net/dupeguru/ppa/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:11 https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:12 https://ppa.launchpadcontent.net/kdenlive/kdenlive-stable/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:13 https://ppa.launchpadcontent.net/kicad/kicad-6.0-releases/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:16 https://ppa.launchpadcontent.net/kicad/kicad-dev-nightly/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:17 https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:18 https://ppa.launchpadcontent.net/ozmartian/apps/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:19 https://ppa.launchpadcontent.net/peek-developers/stable/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Err:20 https://ppa.launchpadcontent.net/unit193/encryption/ubuntu jammy InRelease
#   Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# Fetched 323 kB in 20min 12s (266 B/s)                          
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 8 packages can be upgraded. Run 'apt list --upgradable' to see them.
# W: Failed to fetch https://ppa.launchpadcontent.net/appimagelauncher-team/stable/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/dupeguru/ppa/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/kdenlive/kdenlive-stable/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/kicad/kicad-6.0-releases/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/kicad/kicad-dev-nightly/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/ozmartian/apps/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/peek-developers/stable/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Failed to fetch https://shop.softmaker.com/repo/apt/dists/stable/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2a01:4f8:242:5891::2 443]
# W: Failed to fetch https://ppa.launchpadcontent.net/unit193/encryption/ubuntu/dists/jammy/InRelease  Could not wait for server fd - select (11: Resource temporarily unavailable) [IP: 2620:2d:4000:1::3e 443]
# W: Some index files failed to download. They have been ignored, or old ones used instead.
