#! /usr/bin/env bash
set -eo pipefail

CONDA_ENV="eng-gh-actions"

export PATH="$HOME/anaconda/bin:$PATH"
conda install -c conda-forge conda-devenv -y

conda devenv -n $CONDA_ENV -f environment.devenv.yml
source activate $CONDA_ENV

conda clean -y -activate
echo "conda environment '$CONDA_ENV' created"