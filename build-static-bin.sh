#!/bin/bash

cp CMakeLists.root akumuli/CMakeLists.txt
cp CMakeLists.lib-static akumuli/libakumuli/CMakeLists.txt
cp CMakeLists.daemon akumuli/akumulid/CMakeLists.txt

./build-akumuli.sh

strip akumuli/build/akumulid/akumulid
tar -zcvf akumuli.tar.gz akumuli/build/akumulid/akumulid
