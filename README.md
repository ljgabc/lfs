# lfs
linux file system for armhf


1. dropbear-2015.67

```
sed -i 's/.*mandir.*//g' Makefile.in
./configure --prefix=/usr --host=${TARGET}
make MULTI=1 PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
make MULTI=1 PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp" install DESTDIR=${TARGETFS}
```

2. ncurses-5.9

```
./configure --prefix=/usr --host=${TARGET} --without-ada --without-manpages --without-progs --without-tests --with-shared --without-normal --without-debug
make && make install DESTDIR=${TARGETFS}
```

3. readline-6.3

```
bash_cv_wcwidth_broken=no ./configure --prefix=/usr --host=arm-linux-gnueabihf --enable-static=no --with-curses=ncurses
make && make install DESTDIR=${TARGETFS}
```

4. openssl-1.0.2d

`Configure.patch`
```
--- Configure   2015-07-09 19:57:15.000000000 +0800
+++ ../openssl-1.0.2d_bak/Configure 2015-08-29 00:09:13.139620308 +0800
@@ -396,6 +396,7 @@
 #       ./Configure linux-armv4 -march=armv6 -D__ARM_MAX_ARCH__=8
 #
 "linux-armv4", "gcc: -O3 -Wall::-D_REENTRANT::-ldl:BN_LLONG RC4_CHAR RC4_CH    UNK DES_INT DES_UNROLL BF_PTR:${armv4_asm}:dlfcn:linux-shared:-fPIC::.so.\$(    SHLIB_MAJOR).\$(SHLIB_MINOR)",
+"linux-armv7",  "gcc: -march=armv7-a -mfloat-abi=hard -mfpu=neon -mthumb -O    3 -Wall::-D_REENTRANT::-ldl:BN_LLONG RC4_CHAR RC4_CHUNK DES_INT DES_UNROLL B    F_PTR:${armv4_asm}:dlfcn:linux-shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MI    NOR)",
 "linux-aarch64","gcc: -O3 -Wall::-D_REENTRANT::-ldl:SIXTY_FOUR_BIT_LONG RC4    _CHAR RC4_CHUNK DES_INT DES_UNROLL BF_PTR:${aarch64_asm}:linux64:dlfcn:linux    -shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
 # Configure script adds minimally required -march for assembly support,
 # if no -march was specified at command line. mips32 and mips64 below
```

```
patch -p1 < Configure.patch
CC="gcc --sysroot=${TARGETFS}" ./Configure linux-armv7 no-asm --prefix=/usr zlib-dynamic shared
make
make INSTALL_PREFIX=${TARGETFS} install
```

5. sftp-server

```
./configure --prefix=/usr --host=${TARGET} --disable-etc-default-login --without-ssh1 --with-zlib=${TARGETFS}/usr --with-ssl-dir=${TARGETFS}/usr --with-ssl-engine
make sftp-server
cp sftp-server ${TARGETFS}/usr/libexec/
```

6. Python-2.7.3

```
./configure && make python Parser/pgen && mv python hostpython && mv Parser/pgen Parser/hostpgen && make distclean
patch -p1 < Python-2.7.3-xcompile.patch

./configure --host=${TARGET} --build=${BUILD} --prefix=/usr PYTHON_XCOMPILE_DEPENDENCIES_PREFIX=${TARGETFS}/usr --enable-shared
make HOSTPYTHON=./hostpython HOSTPGEN=./Parser/hostpgen BLDSHARED="${TARGET}-gcc -shared" CROSS_COMPILE=${TARGET}- CROSS_COMPILE_TARGET=yes HOSTARCH=${TARGET} BUILDARCH=${BUILD} PYTHON_XCOMPILE_DEPENDENCIES_PREFIX="${TARGETFS}/usr"
make HOSTPYTHON=./hostpython HOSTPGEN=./Parser/hostpgen BLDSHARED="${TARGET}-gcc -shared" CROSS_COMPILE=${TARGET}- CROSS_COMPILE_TARGET=yes HOSTARCH=${TARGET} BUILDARCH=${BUILD} PYTHON_XCOMPILE_DEPENDENCIES_PREFIX="${TARGETFS}/usr" DESTDIR=${TARGETFS} install
```
