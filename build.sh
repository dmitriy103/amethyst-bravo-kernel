#!/bin/sh
# Very simple build script

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1113_HAVS@925mV_Ginger_CFS_BFQ_SLQB.zip

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1113_HAVS@875mV_Ginger_CFS_BFQ_SLQB.zip

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
ZipBuilder/builder.sh
cp ZipBuilder/update_signed.zip ~/Dropbox/couttstech-2.6.37_OC1113_Ginger_CFS_BFQ_SLQB.zip
