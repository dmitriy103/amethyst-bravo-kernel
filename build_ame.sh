#!/bin/sh
# Very simple build script

rm -r ZipBuilder/system/lib/modules/*

ARCH=arm make clean
ARCH=arm make defconfig HAVS_AME_defconfig
CROSS_COMPILE=/home/stevec/dev/phone/kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Amethyst_CFS_BFQ2_SLQB.zip

ARCH=arm make defconfig SVS_AME_defconfig
CROSS_COMPILE=/home/stevec/dev/phone/kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Amethyst_CFS_BFQ2_SLQB.zip

ARCH=arm make defconfig HAVS_BFS_AME_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
CROSS_COMPILE=/home/stevec/dev/phone/kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Amethyst_BFS_BFQ2_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig

ARCH=arm make defconfig SVS_BFS_AME_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old  
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
CROSS_COMPILE=/home/stevec/dev/phone/kernel/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Amethyst_BFS_BFQ2_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig

ARCH=arm make clean
