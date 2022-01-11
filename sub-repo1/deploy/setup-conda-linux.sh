#! /usr/bin/env bash
set -eo pipefail

export PATH=/usr/local/bin:$HOME/anaconda/bin:$PATH
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
    && bash miniconda.sh -f -b -p $HOME/anaconda \
    && pushd $HOME/anaconda/bin \
    && conda install pip -y \
    && conda clean --all -y \
    && conda init bash \
    && popd \
    && rm miniconda.sh