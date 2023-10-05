#!/usr/bin/env bash
set -euo pipefail

apt remove -y --purge --autoremove \
  autoconf automake libtool build-essential cmake \
  adwaita-icon-theme gdb ghostscript git groff-base \
  gsfonts gstreamer1.0-gl manpages mesa-vulkan-drivers \
  ntfs-3g patch qt5-qmake qttranslations5-l10n xauth \
  libad9361-dev libasound2-dev libcamera-apps-lite \
  libfaad-dev libfftw3-3 libfreetype6-dev libhidapi-dev \
  libident libiio-dev libopus-dev \
  libpipeline1 libpulse-dev libraspberrypi-doc libreadline6 \
  libraspberrypi-dev libsigc++-1.2-5c2 libsoapysdr-dev \
  libtinfo5 libuchardet0 libusb-1.0-0-dev python-is-python3
