#!/bin/bash

export CFLAGS="-w -fPIC"
export CXXFLAGS="-w -fPIC"
export BUILD_DIR=$(pwd)
export BOOST_ROOT=$BUILD_DIR/boost
export INSTALL_DIR=$BUILD_DIR/install

./download.sh
./build-third-party.sh
./build-akumuli.sh
