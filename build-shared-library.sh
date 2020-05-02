#!/bin/bash

cp CMakeLists.root.lib akumuli/CMakeLists.txt
cp CMakeLists.lib-shared akumuli/libakumuli/CMakeLists.txt
cp CMakeLists.daemon akumuli/akumulid/CMakeLists.txt

./build-akumuli.sh

mkdir -p $BUILD_DIR/dist/shared-lib
cp -P akumuli/build/libakumuli/libakumuli.* $BUILD_DIR/dist/shared-lib

mkdir -p $BUILD_DIR/dist/include $BUILD_DIR/dist/include
cp akumuli/include/akumuli_version.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli_config.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli_def.h $BUILD_DIR/dist/include
