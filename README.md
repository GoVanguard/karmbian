<h3 align=center><a href="https://blog.govanguard.com/hubfs/Karmbian%20Logo_Karmbain%20Logo%20Blk%20Horizontal.png"><img src="https://blog.govanguard.com/hubfs/Karmbian%20Logo_Karmbain%20Logo%20Blk%20Horizontal.png" alt="Karmbian Logo" width="500"></a><br>
Kali Linux Built Using the Armbian Tool Chain & BSPs  
</h3>

<h4 align=center>Note: RasberryPi 4b support in the works and coming very soon!</h4>

<p align=right>&nbsp;</p>

## Table of contents

- [Overview](#overview)
- [What do you need to get started?](#what-do-you-need-to-get-started)
- [How to build an image or a kernel?](#how-to-build-an-image-or-a-kernel)
- [Build parameter examples](#build-parameter-examples)
- [Where to download prebuilt images?](#where-to-download-prebuilt-images)
- [Credits](#credits)

<p align=right>&nbsp;</p>

## Overview

- Builds custom Kali based Linux system optimized for RK3399 SBC and other single board computers supported by Armbian.
- Covers root filesystem generation, kernel image compilation and bootloader compilation.
- Provides a consistent user experience by keeping system standards across different SBC platforms.
- Blog Announcement: https://blog.govanguard.com/govanguard-presents-karmbian-kali-linux-using-armbian

<p align=right>&nbsp;</p>

## What do you need to get started?
    
- x64 machine with at least 2GB of memory and ~35GB of disk space for the VM, container or native OS.
- Ubuntu Bionic 18.04 / Focal 20.04 x64 for native building or any [Docker](https://docs.armbian.com/Developer-Guide_Building-with-Docker/) capable x64 Linux for containerised.
- Kali 2020 x64 for native building, aria2 compiled and installed separately.
- Superuser rights (configured sudo or root access).

<p align=right><a href=#table-of-contents>⇧</a></p>

## How to build an image or a kernel?

```text
apt-get -y install git
git clone https://github.com/GoVanguard/karmbian
cd build
./compile.sh
```
<a href="#how-to-build-an-image-or-a-kernel"><img src=".github/README.gif" alt="Armbian logo" width="100%"></a>

<p align=right><a href=#table-of-contents>⇧</a></p>

## Build parameter examples

Show work in progress areas in interactive mode:

```text
./compile.sh EXPERT="yes"
```

Run build tools inside Docker container:

```text
./compile.sh docker
```

Build minimal CLI of Kali 2020 for the Rock64 (Not RockPro64):

```text
./compile.sh  BOARD=rock64 BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=yes BUILD_DESKTOP=no \
KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img
```

Build full desktop of Kali 2020 for the RockPro64:

```test
./compile.sh  BOARD=rockpro64 BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes \
KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img
```

[Build parameters, advanced build options, user defined configuration, build with Docker?](#additional-information)

<p align=right><a href=#table-of-contents>⇧</a></p>

## Where to download prebuilt images?

- For RockPro64 and Rock64 visit https://github.com/GoVanguard/karmbian/releases
- For others, clone the source and build them :)

<p align=right><a href=#table-of-contents>⇧</a></p>

## Credits

Kali support developed by Shane Scott, GoVanguard.
<p>
Credit to Armbian and all of their contributors for the base system.
