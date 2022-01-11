#! /usr/bin/env bash
set -eo pipefail

apt-get -q -y update
apt-get -q -y install --no-install-recommends \
    bzip2 \
    ca-certificates \
    git \
    wget \
    zip
apt-get clean && apt-get autoremove --purge