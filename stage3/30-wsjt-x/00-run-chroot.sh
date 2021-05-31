#!/usr/bin/env bash
set -euxo pipefail

DEB=wsjtx_2.4.0_armhf.deb

apt-get -y purge --autoremove wsjtx wsjtx-data

pushd /tmp
wget http://physics.princeton.edu/pulsar/k1jt/$DEB
dpkg -i $DEB
rm $DEB
popd