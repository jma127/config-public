#!/bin/bash

set -e

echo "Installing CPU only Python packages"

conda install -y -c conda-forge \
    faiss \
    libfaiss \
    jax \
    tensorboard \
    xgboost \
;

conda install -y -c pytorch \
    pytorch \
    torchvision \
;
