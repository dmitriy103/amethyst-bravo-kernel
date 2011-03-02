#!/bin/sh
# Very simple build script

git checkout couttstech-2.6.38-ginger

ARCH=arm make clean

ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Ginger_CFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Ginger_CFS_VR_SLQB.zip

ARCH=arm make clean

RCH=arm make defconfig HAVS_BFS_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Ginger_BFS_VR_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig

ARCH=arm make defconfig SVS_BFS_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old  
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Ginger_BFS_VR_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig


git checkout couttstech-2.6.38-froyo

ARCH=arm make clean

ARCH=arm make defconfig HAVS_Froyo_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Froyo_CFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_Froyo_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Froyo_CFS_VR_SLQB.zip

ARCH=arm make clean

ARCH=arm make defconfig HAVS_BFS_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old  
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_HAVS_Froyo_BFS_VR_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig

ARCH=arm make defconfig SVS_BFS_defconfig
cp arch/arm/Kconfig arch/arm/Kconfig.old  
cp arch/arm/Kconfig.bfs arch/arm/Kconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.38_OC1190_SVS_Froyo_BFS_VR_SLQB.zip
mv arch/arm/Kconfig.old arch/arm/Kconfig

git checkout couttstech-2.6.38-ginger

