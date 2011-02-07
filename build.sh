#!/bin/sh
# Very simple build script

ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS_Ginger_CFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_SVS_Ginger_CFS_VR_SLQB.zip

ARCH=arm make defconfig HAVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS_Ginger_BFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_SVS_Ginger_BFS_VR_SLQB.zip

git checkout couttstech-2.6.37-froyo

ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS_Froyo_CFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_SVS_Froyo_CFS_VR_SLQB.zip

ARCH=arm make defconfig HAVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS_Froyo_BFS_VR_SLQB.zip

ARCH=arm make defconfig SVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_SVS_Froyo_BFS_VR_SLQB.zip

