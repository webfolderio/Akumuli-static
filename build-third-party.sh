#!/bin/bash

rm -rf $BUILD_DIR/install
mkdir $BUILD_DIR/install

cd boost
./bootstrap.sh 
./b2 --clean
./b2 \
 --with-chrono \
 --with-atomic \
 --with-program_options \
 --with-system \
 --with-thread \
 --with-filesystem \
 --with-regex \
 --with-date_time \
 link=static \
 cflags="-w -fPIC" \
 cxxflags="-w -fPIC"

cd ..

cd sqlite3
./configure --prefix=$INSTALL_DIR --enable-static --enable-shared
make clean
make
make install
cd ..

cd expat
./configure --prefix=$INSTALL_DIR --enable-static
make clean
make
make install
cd ..

cd apr
./configure --prefix=$INSTALL_DIR --with-installbuilddir=$INSTALL_DIR/apr --enable-static
make clean
make
make install
cd ..

cd apr-util
./configure \
 --prefix=$INSTALL_DIR \
 --with-apr=$INSTALL_DIR \
 --with-expat=$INSTALL_DIR \
 --disable-util-dso \
 --without-gdbm \
 --without-ldap \
 --without-pgsql \
 --with-sqlite3=$INSTALL_DIR
make clean
make
make install
cd ..

cd log4cxx
./autogen.sh
./configure --prefix=$INSTALL_DIR --with-apr=$INSTALL_DIR --with-apr-util=$INSTALL_DIR --enable-static
make clean
make
make install
cd ..

cd libmicrohttpd
./configure --prefix=$INSTALL_DIR --enable-static --without-gnutls
make clean
make
make install
cd ..

cd expat
./configure --prefix=$INSTALL_DIR --enable-static
make clean
make
make install
cd ..

