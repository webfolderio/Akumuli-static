#!/bin/bash

curl -O -L https://github.com/beltoforion/muparser/archive/v2.2.6.1.zip
unzip -q v2.2.6.1.zip
mv muparser-2.2.6.1 muparser
rm -f v2.2.6.1.zip

curl -O -L https://sourceforge.net/projects/boost/files/boost/1.65.1/boost_1_65_1.tar.bz2/download
mv download boost_1_65_1.tar.bz2
tar xf boost_1_65_1.tar.bz2
rm -f boost_1_65_1.tar.bz2
mv boost_1_65_1 boost

curl -O -L https://www.sqlite.org/2019/sqlite-autoconf-3300100.tar.gz
tar xfz sqlite-autoconf-3300100.tar.gz
rm -f sqlite-autoconf-3300100.tar.gz
mv sqlite-autoconf-3300100 sqlite3

curl -L -O https://github.com/libexpat/libexpat/releases/download/R_2_2_9/expat-2.2.9.tar.gz
tar xfz expat-2.2.9.tar.gz
rm -f expat-2.2.9.tar.gz
mv expat-2.2.9 expat

curl -O https://archive.apache.org/dist/apr/apr-1.6.5.tar.bz2
tar xf apr-1.6.5.tar.bz2
rm -f apr-1.6.5.tar.bz2
mv apr-1.6.5 apr

curl -O https://archive.apache.org/dist/apr/apr-util-1.6.1.tar.bz2
tar xf apr-util-1.6.1.tar.bz2
rm -f apr-util-1.6.1.tar.bz2
mv apr-util-1.6.1 apr-util

curl -L -O https://github.com/apache/logging-log4cxx/archive/master.zip
unzip -q master
mv logging-log4cxx-master log4cxx
rm -f master.zip

curl -O https://ftp.gnu.org/gnu/libmicrohttpd/libmicrohttpd-0.9.68.tar.gz
tar xfz libmicrohttpd-0.9.68.tar.gz
rm -f libmicrohttpd-0.9.68.tar.gz
mv libmicrohttpd-0.9.68 libmicrohttpd

curl -L -O https://github.com/libexpat/libexpat/releases/download/R_2_2_9/expat-2.2.9.tar.gz
tar xfz expat-2.2.9.tar.gz
rm -f expat-2.2.9.tar.gz
mv expat-2.2.9 expat

curl -L -O https://github.com/akumuli/Akumuli/archive/v0.8.80.zip
unzip -q v0.8.80.zip
mv Akumuli-0.8.80 akumuli
rm -f v0.8.80.zip
