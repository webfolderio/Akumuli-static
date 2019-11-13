#!/bin/bash

export CFLAGS="-w -fPIC"
export CXXFLAGS="-w -fPIC"
export BUILD_DIR=$(pwd)
export BOOST_ROOT=$BUILD_DIR/boost
export INSTALL_DIR=$BUILD_DIR/install

./download.sh
./build-third-party.sh
./build-static-bin.sh
#./build-shared-library.sh
cd dist
tar -zcvf akumuli.tar.gz akumulid
