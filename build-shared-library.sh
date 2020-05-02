#!/bin/bash

cp CMakeLists.root.lib akumuli/CMakeLists.txt
cp CMakeLists.lib-shared akumuli/libakumuli/CMakeLists.txt

./build-akumuli.sh

mkdir -p $BUILD_DIR/dist/shared-lib
cp -P akumuli/build/libakumuli/libakumuli.* $BUILD_DIR/dist/shared-lib
