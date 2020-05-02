#!/bin/bash

cp CMakeLists.root akumuli/CMakeLists.txt
cp CMakeLists.lib-static akumuli/libakumuli/CMakeLists.txt
cp CMakeLists.daemon akumuli/akumulid/CMakeLists.txt

./build-akumuli.sh

mkdir -p $BUILD_DIR/dist
cp akumuli/build/akumulid/akumulid $BUILD_DIR/dist
strip $BUILD_DIR/dist/akumulid
