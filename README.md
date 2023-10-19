# Xubuntu-minimum-shell-config

> NOTICE: This repository will no longer be actively maintained. Presently, I am mostly on Debian-XFCE. The repository is being archived to preserve its contents. Please do not expect any further updates. If you are interested in this repository, please fork it and continue maintaining it yourself.
>
> I apologise for any inconvenience this may cause.

Linux shell scripts to configure a freshly installed [Xubuntu Linux](https://xubuntu.org/) system and install minimum required programs to get a workable installation with essential packages for day-to-day use.

Command:

```
sh my-xubuntu-config-on-github.sh
```

File: `my-xubuntu-config-on-github.sh`

```
#!/bin/bash

cd ~/  && \
git clone https://github.com/Pinaki82/Xubuntu-minimum-shell-config/tree/main/shell \
```

### [Configure SSH with Git](https://github.com/Pinaki82/Tulu-C-IDE/blob/main/GIT%2BSSH%2BGPG-and-Code-Signing.md)

Right-Click on the image below and open the link in a new tab.

[![N|git_ssh_github](https://user-images.githubusercontent.com/16861933/107740857-0d11e100-6d32-11eb-9de0-c0cd08104e00.png)](https://github.com/Pinaki82/Tulu-C-IDE/blob/main/GIT%2BSSH%2BGPG-and-Code-Signing.md)

![Screenshot_2021-02-25_13-16-27](https://user-images.githubusercontent.com/16861933/109127368-41c86400-7746-11eb-95a8-08fd71dee5cd.png)

Xubuntu Focal Fossa 20.04.2 LTS, [Linux version 5.4.0-66-generic (buildd@lgw01-amd64-039) (gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)) #74-Ubuntu SMP Wed Jan 27 22:54:38 UTC 2021] on a Lenovo 3000Y (Y410) (2006 model) (Intel Centrino Core 2 Duo T5450, Single Core 1.6GHz/2GB DDR2/Intel HD GMA X3100 GM965/GL960) Laptop.

Date: 25 February 2021, 01:16 PM.

![Xubuntu-w-Themes](https://user-images.githubusercontent.com/16861933/111397221-c4f62d80-86e6-11eb-96b5-452a1ca7f6b0.gif)

### Alternative Software Search:

https://switching.software/

(Git repository link to switching.software: https://codeberg.org/swiso/website)

## UEFI/EFI Systems:

[Reference 1](https://askubuntu.com/questions/1128810/no-efi-system-partition-option-for-ubuntu-18-10)

**The EFI System Partition (ESP):**

**The requirements for the ESP partition are:**

> 1. It must be a primary partition (relevant only for MBR based partition table)
> 2. It must be a FAT32 partition
> 3. The boot flag must be set

[Reference 2](https://www.itzgeek.com/post/how-to-install-ubuntu-20-04-lts/)

[Reference 3](https://askubuntu.com/questions/1313154/how-to-know-the-proper-amount-of-needed-disk-space-for-efi-partition)

**UEFI System:**

> EFI : 1GB

> swap – 4GB (not a must-have)

> /  – Remaining (ROOT)

**NOTE:** The `/home` directory will also be created along with the **ROOT** directory if we choose to allocate the remaining drive space to **ROOT** (`/`).

**Legacy BIOS:**

> /boot – 1GB

> swap – 4GB (not a must-have)

> /  – Remaining (ROOT)

**NOTE 1:** The `/home` directory will also be created along with the **ROOT** directory if we choose to allocate the remaining drive space to **ROOT** (`/`). If required, a separate `/home` partition can be created as well.

**Example:**

**UEFI System (with a separate /home partition):**

> EFI : 1GB

> swap – 4GB (not a must-have)

> /home – 30GB

> /  – Remaining (ROOT)

**NOTE 2:** _A dedicated swap partition is unnecessary on a newer machine (at least a machine that was manufactured after 2015) with an installed SSD as the boot drive._

## F6 options for older computers

# 1.

![2020-11-23 21_02_17-Window](https://user-images.githubusercontent.com/16861933/104064024-30bda500-5223-11eb-90a5-031632b7fbb0.png)

# 2.

![2020-11-23 21_02_53-Window](https://user-images.githubusercontent.com/16861933/104064100-4df27380-5223-11eb-9b34-3b6e8784cf24.png)

![Xubuntu-Logo](https://user-images.githubusercontent.com/16861933/110677290-02485000-81fb-11eb-921a-cd2e76be5149.jpg)

`apt search hollywood`

`fill your console with Hollywood melodrama technobabble`

![Hollywood](https://media.giphy.com/media/wmROp19pebs9W/giphy.gif)

Image from: [It's FOSS](https://itsfoss.com/hollywood-hacker-screen/).

Linux console is full of melodrama technobabble for people who are from the non-UNIX world until the moment they get familiar with the terminal (nevertheless, it's easy). If you need to exaggerate the intensity of that melodrama dopebabble beyond acceptance, you have the option. Not for low-end systems though. It was relentlessly generating RSA keypairs on my faint-hearted laptop till the CPU bottlenecked to abnormal thermal shutdown. If you own a newer device, you may give it a try.
