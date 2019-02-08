#!/bin/bash

set -x
echo $PREFIX
export CXXFLAGS="${CXXFLAGS} -Wall -O2 -pipe -march=x86-64 -std=c++11 -fPIC"
export CPPFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib"

mkdir build && cd build
../configure --prefix=${PREFIX} --enable-shared
make -j4
make install
