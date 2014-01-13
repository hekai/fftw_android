#!/bin/sh

# Compiles fftw3 for Android
# Make sure you have NDK_DIR defined in .bashrc or .bash_profile

#NDK Version r9c  http://dl.google.com/android/ndk/android-ndk-r9c-linux-x86_64.tar.bz2
NDK_DIR="/home/hekai/software/android-ndk-r9c"
INSTALL_DIR="`pwd`/jni/fftw3"
SRC_DIR="`pwd`/../fftw-3.3.3"

cd $SRC_DIR

export PATH="$NDK_DIR/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/:$PATH"
export SYS_ROOT="$NDK_DIR/platforms/android-8/arch-arm/"
export CC="arm-linux-androideabi-gcc --sysroot=$SYS_ROOT"
export LD="arm-linux-androideabi-ld"
export AR="arm-linux-androideabi-ar"
export RANLIB="arm-linux-androideabi-ranlib"
export STRIP="arm-linux-androideabi-strip"
#export CFLAGS="-mfpu=neon -mfloat-abi=softfp"

mkdir -p $INSTALL_DIR
./configure --host=arm-eabi \
	--prefix=$INSTALL_DIR \
	LIBS="-lc -lgcc" \
	--enable-float \
	--enable-threads \
#	--with-combined-threads \

make
make install

exit 0
