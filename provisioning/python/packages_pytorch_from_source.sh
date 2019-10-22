#!/bin/bash

set -e

CUDA_VERSION="${CUDA_VERSION:-10.1}"

echo "Installing PyTorch from source"

WORKING_DIR="$(mktemp -d -t install-pytorch-XXXXXXXX)"
cd "$WORKING_DIR"

BRANCH="${BRANCH:-master}"
export TORCH_CUDA_ARCH_LIST="${TORCH_CUDA_ARCH_LIST:-6.0;6.1;7.0;7.5}"

echo "Cloning PyTorch repo to $WORKING_DIR"
git clone --recursive --branch "$BRANCH" https://github.com/pytorch/pytorch.git "$WORKING_DIR"

echo "Installing MAGMA from conda"
CUDA_VERSION_NODOT="${CUDA_VERSION//./}"
conda install -y -c pytorch magma-cuda"$CUDA_VERSION_NODOT"

echo "Running install script"
python setup.py install

echo "Cleaning up PyTorch install"
rm -rf "$WORKING_DIR"
