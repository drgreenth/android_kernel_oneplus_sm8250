#!/bin/sh
export ARCH=arm64
export SUBARCH=arm64

echo "Starting to clean.."
make O=out ARCH=arm64 clean
echo "Clean done."
