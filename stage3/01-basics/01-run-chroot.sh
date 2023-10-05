#!/usr/bin/env bash
set -euo pipefail
update-alternatives --set editor /usr/bin/vim.basic

cat > /etc/dpkg/dpkg.cfg.d/01_nodoc << _EOF_
# Delete man pages
path-exclude=/usr/share/man/*

# Delete docs
path-exclude=/usr/share/doc/*
path-include=/usr/share/doc/*/copyright
_EOF_

apt remove -y --purge man-db

