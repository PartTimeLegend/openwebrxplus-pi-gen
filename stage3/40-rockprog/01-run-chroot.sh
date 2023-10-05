#!/usr/bin/env bash
set -euo pipefail

pushd /tmp

git clone https://github.com/0xAF/rockprog-linux
cd rockprog-linux
make
cp rockprog /usr/local/bin/
cd ..
rm -rf rockprog-linux

popd

