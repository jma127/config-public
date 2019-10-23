#!/bin/bash

set -e

echo "Installing APEX from source"

WORKING_DIR="$(mktemp -d -t install-apex-XXXXXXXX)"
cd "$WORKING_DIR"

BRANCH="${BRANCH:-master}"
export TORCH_CUDA_ARCH_LIST="${TORCH_CUDA_ARCH_LIST:-6.0;6.1;7.0;7.5}"

echo "Cloning APEX repo to $WORKING_DIR"
git clone --recursive --branch "$BRANCH" https://github.com/NVIDIA/apex.git "$WORKING_DIR"

echo "Running install script"
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./

echo "Cleaning up APEX install"
rm -rf "$WORKING_DIR"
