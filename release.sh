#!/bin/sh
export ARCH=arm64
export SUBARCH=arm64

if [ -f /home/drgreen/android/android_kernel_oneplus_sm8250/out/arch/arm64/boot/Image ]; then
	cp /home/drgreen/android/android_kernel_oneplus_sm8250/out/arch/arm64/boot/Image /home/drgreen/android/AIK-Linux/split_img/boot.img-zImage
	cd /home/drgreen/android/AIK-Linux/
	sh /home/drgreen/android/AIK-Linux/repackimg.sh
	mv /home/drgreen/android/AIK-Linux/image-new.img /home/drgreen/release/handelinkernel_vxx_nomagisk.img
	echo "Image created and released."
else
	echo "No kernel image in output folder. Build first."
fi
