#!/bin/bash

cd akumuli
rm -rf build
mkdir build
cd build

cmake \
 -DCMAKE_BUILD_TYPE=Release \
 -DLIBMICROHTTPD_INCLUDE_DIRS=$INSTALL_DIR/include \
 -DAPR_INCLUDE_DIR=$INSTALL_DIR/include/apr-1 \
 -DAPRUTIL_INCLUDE_DIR=$INSTALL_DIR/include/apr-1 \
 -DSQLITE3_INCLUDE_DIR=$INSTALL_DIR/include \
 -DLOG4CXX_INCLUDE_DIR=$INSTALL_DIR/include \
 ..

make
