#! /bin/sh

export PATH="/tools/bin:$PATH"

export CPPFLAGS="-mfloat-abi=hard"
export CFLAGS="-march=armv7-a -mfloat-abi=hard -mfpu=neon -mthumb -O3 -I/usr/include"
export CXXFLAGS="-march=armv7-a -mfloat-abi=hard -mfpu=neon -mthumb -O3"
export LDFLAGS="-march=armv7-a -L/usr/lib"

