#!/bin/bash
set -eu

mkdir -p build
cd build

cmake \
  .. \
  -DENABLE_BITSHUFFLE_PLUGIN=no \
  -DENABLE_LZ4_PLUGIN=no \
  -DENABLE_BZIP2_PLUGIN=yes \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5
make install

mkdir -p $PREFIX/lib/hdf5/plugin
cp $PREFIX/lib/plugins/libh5bz2.so $PREFIX/lib/hdf5/plugin
