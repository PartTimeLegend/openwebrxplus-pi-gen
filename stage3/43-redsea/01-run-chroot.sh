#!/usr/bin/env bash
set -euo pipefail


pushd /tmp

git clone https://github.com/windytan/redsea.git
cd redsea
./autogen.sh
./configure
make
make install
cd ..
popd
