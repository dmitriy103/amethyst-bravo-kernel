#!/bin/sh
# Very simple build script

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@925mV_Ginger_CFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@875mV_Ginger_CFS_VR_SLQB.zip

## HAVS@850 build, this is just for me :)
cp arch/arm/mach-msm/avs.c.850 arch/arm/mach-msm/avs.c
cp arch/arm/mach-msm/avs.h.850 arch/arm/mach-msm/avs.h 
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@850mV_Ginger_CFS_VR_SLQB.zip
cp arch/arm/mach-msm/avs.c.standard arch/arm/mach-msm/avs.c

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_Ginger_CFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@925mV_Ginger_BFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@875mV_Ginger_BFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_Ginger_BFS_VR_SLQB.zip

git checkout couttstech-2.6.37-froyo

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@925mV_Froyo_CFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip  ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@875mV_Froyo_CFS_VR_SLQB.zip

## HAVS@850 build, this is just for me :)
cp arch/arm/mach-msm/avs.c.850 arch/arm/mach-msm/avs.c
cp arch/arm/mach-msm/avs.h.850 arch/arm/mach-msm/avs.h 
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@850mV_Froyo_CFS_VR_SLQB.zip
cp arch/arm/mach-msm/avs.c.standard arch/arm/mach-msm/avs.c

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_Froyo_CFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@925mV_Froyo_BFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_HAVS@875mV_Froyo_BFS_VR_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_BFS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1190_Froyo_BFS_VR_SLQB.zip

