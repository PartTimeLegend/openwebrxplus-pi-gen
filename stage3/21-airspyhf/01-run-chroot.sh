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

git clone --depth 1 https://github.com/airspy/airspyhf.git
cmakebuild airspyhf -DINSTALL_UDEV_RULES=ON
ldconfig

git clone --depth 1 https://github.com/pothosware/SoapyAirspyHF.git
cmakebuild SoapyAirspyHF
ldconfig

popd