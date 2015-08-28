#!/bin/sh

# 此脚本用来配置编译环境，需在编译前source此文件

export TARGET=arm-linux-gnueabihf
export BUILD=x86_64-cross-linux-gnu
export ARCH=arm
export CROSS_COMPILE="${TARGET}-"

export MTHUMB="-mthumb"
export CFLAGS="-march=armv7-a -mfloat-abi=hard -mfpu=neon -O3 ${MTHUMB}"
export CXXFLAGS="-march=armv7-a -mfloat-abi=hard -mfpu=neon -O3  ${MTHUMB}"
export LDFLAGS="-march=armv7-a -Wl,--fix-cortex-a8"
