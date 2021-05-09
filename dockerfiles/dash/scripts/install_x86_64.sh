#!/usr/bin/env bash

apk --update --no-cache add autoconf automake curl g++ gcc libexecinfo-dev libexecinfo-static libtool make perl pkgconfig python3 patch linux-headers cmake git
cd /home
git clone https://github.com/dashpay/dash
cd dash/depends
make
cd ..
./autogen.sh

./configure --with-gui=no --prefix=$(pwd)/depends/x86_64-pc-linux-gnu
make