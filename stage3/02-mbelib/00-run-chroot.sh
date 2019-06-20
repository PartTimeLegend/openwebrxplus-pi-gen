#!/usr/bin/env bash
set -euxo pipefail

pushd /tmp
git clone https://github.com/szechyjs/mbelib.git
pushd mbelib
mkdir build
pushd build
cmake ..
make
sudo make install
popd
popd
rm -rf mbelib
popd
ldconfig
