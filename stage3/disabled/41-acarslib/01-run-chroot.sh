#!/usr/bin/env bash
set -euo pipefail

function cmakebuild() {
  cd $1
  if [[ ! -z "${2:-}" ]]; then
    git checkout $2
  fi
  if [[ -f ".gitmodules" ]]; then
    git submodule update --init
  fi
  mkdir build
  cd build
  cmake ${CMAKE_ARGS:-} ..
  make
  make install
  cd ../..
  rm -rf $1
}


pushd /tmp

git clone https://github.com/szpajder/libacars.git
cmakebuild libacars v2.1.4

popd
