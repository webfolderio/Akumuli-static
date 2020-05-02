#!/bin/bash

mkdir -p $BUILD_DIR/dist/static-lib
cp akumuli/build/libakumuli/libakumuli.a $BUILD_DIR/dist/static-lib

mkdir -p $BUILD_DIR/dist/include $BUILD_DIR/dist/include
cp akumuli/include/akumuli_version.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli_config.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli.h $BUILD_DIR/dist/include
cp akumuli/include/akumuli_def.h $BUILD_DIR/dist/include
