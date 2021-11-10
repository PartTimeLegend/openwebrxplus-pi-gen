#!/usr/bin/env bash
set -euo pipefail

function cmakebuild() {
  pushd $1
  mkdir build
  pushd build
  cmake "${@:2}" ..
  make
  make install
  popd
  popd
  rm -rf $1
}

pushd /tmp

git clone https://github.com/pothosware/SoapyFCDPP.git
cmakebuild SoapyFCDPP
ldconfig

popd