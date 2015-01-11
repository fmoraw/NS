#!/bin/sh
export CC=gcc-4.8.1
export CPP=cpp-4.8.1
export CXX=g++-4.8.1
rm -R source -f
mkdir source
cd source
unzip -a ../NS-server-src.zip
cd source/curl
dos2unix *
chmod u+rwx *
./configure --build=i386-linux
make clean
make
cd ../linux
make
