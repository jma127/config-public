#!/bin/bash

set -e

echo "Installing CPU only Python packages"

conda install -y -c pytorch \
    faiss-cpu \
    pytorch \
    torchvision \
;

conda install -y lightgbm
