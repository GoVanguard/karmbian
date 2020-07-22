#!/bin/bash

./compile.sh  BOARD=rockpro64 BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz
./compile.sh  BOARD=rockpro64 BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz

./compile.sh  BOARD=pinebook-pro BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz
./compile.sh  BOARD=pinebook-pro BRANCH=dev RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz

./compile.sh  BOARD=rock64 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz
./compile.sh  BOARD=rock64 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz

./compile.sh  BOARD=odroidn2 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz
./compile.sh  BOARD=odroidn2 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz

./compile.sh  BOARD=pinebook-a64 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz
./compile.sh  BOARD=pinebook-a64 BRANCH=current RELEASE=kali-rolling BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img,xz

#cd ./output/images/
#for imageName in ./*.img; do
#    xz $imageName
#`done
