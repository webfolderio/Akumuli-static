bin/bash

cp CMakeLists.root akumuli/CMakeLists.txt
cp CMakeLists.lib-static akumuli/libakumuli/CMakeLists.txt
cp CMakeLists.daemon akumuli/akumulid/CMakeLists.txt

cd akumuli
rm -rf build
mkdir build
cd build

cmake \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
 -DLIBMICROHTTPD_INCLUDE_DIRS=$INSTALL_DIR/include \
 -DAPR_INCLUDE_DIR=$INSTALL_DIR/include/apr-1 \
 -DAPRUTIL_INCLUDE_DIR=$INSTALL_DIR/include/apr-1 \
 -DSQLITE3_INCLUDE_DIR=$INSTALL_DIR/include \
 -DLOG4CXX_INCLUDE_DIR=$INSTALL_DIR/include \
 ..

make
make install

cd akumulid
strip akumulid
tar -zcvf akumuli.tar.gz akumulid
mv akumuli.tar.gz ../../../
cd ..
cd ..
cd ..

mkdir -p $INSTALL_DIR/boost
cp -rp boost/* $INSTALL_DIR/boost

cd $INSTALL_DIR
tar -zcf akumuli-library.tar.gz install
