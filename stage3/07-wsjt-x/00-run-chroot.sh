#!/usr/bin/env bash
set -euxo pipefail

DEB=wsjtx_2.0.1_armhf.deb

pushd /tmp
wget http://physics.princeton.edu/pulsar/k1jt/$DEB
dpkg -i $DEB
rm $DEB
popd