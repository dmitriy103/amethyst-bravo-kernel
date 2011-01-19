#!/bin/sh
# Very simple build script

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig HAVS_defconfig
ARCH=arm make -j2
cd ZipBuilder
./builder.sh
cp update_signed ~/Dropbox/couttstech-2.6.37_OC1113_HAVS@925mV_CFS_BFQ_SLQB.zip
cd ..

cp arch/arm/mach-msm/avs.h.875 arch/arm/mach-msm/avs.h
ARCH=arm make -j2
cd ZipBuilder
./builder.sh
cp update_signed ~/Dropbox/couttstech-2.6.37_OC1113_HAVS@875mV_CFS_BFQ_SLQB.zip
cd ..

cp arch/arm/mach-msm/avs.h.925 arch/arm/mach-msm/avs.h
ARCH=arm make defconfig SVS_defconfig
ARCH=arm make -j2
cd ZipBuilder
./builder.sh
cp update_signed ~/Dropbox/couttstech-2.6.37_OC1113_CFS_BFQ_SLQB.zip
cd ..