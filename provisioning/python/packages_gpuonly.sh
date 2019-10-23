#!/bin/bash

set -e

CUDA_VERSION="${CUDA_VERSION:-10.1}"

echo "Installing GPU only Python packages, CUDA version $CUDA_VERSION"

conda install -y -c pytorch \
    faiss-gpu \
    pytorch \
    torchvision \
    cudatoolkit="$CUDA_VERSION" \
;

conda install -y lightgbm

pip install tensorflow-gpu
