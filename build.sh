#!/bin/sh
export ARCH=arm64
export SUBARCH=arm64
make O=out ARCH=arm64 handeli_defconfig
PATH=/home/drgreen/android/clang/bin:/home/drgreen/android/toolchain/bin:${PATH} make -j$(nproc --all) O=out ARCH=arm64 LD=ld.lld CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android-
