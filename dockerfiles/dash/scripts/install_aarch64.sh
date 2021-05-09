#!/usr/bin/env bash

apk --update --no-cache add autoconf automake curl g++ gcc libexecinfo-dev libexecinfo-static libtool make perl pkgconfig python3 patch linux-headers cmake git
cd /home
git clone https://github.com/dashpay/dash
cd dash/depends
make
cd ..
./autogen.sh

./configure --with-gui=no --prefix=$(pwd)/depends/aarch64-linux-gnu
make