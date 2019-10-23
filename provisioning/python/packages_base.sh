#!/bin/bash

set -e

echo "Installing base Python packages from conda"

conda install -y \
    absl-py \
    altair \
    astor \
    babel \
    beautifulsoup4 \
    biopython \
    black \
    cffi \
    cmake \
    cython \
    docutils \
    django \
    flake8 \
    flask \
    gast \
    google-pasta \
    h5py \
    intel-openmp \
    ipython \
    jinja2 \
    jupyter \
    jupyterlab \
    markdown \
    matplotlib \
    mkl \
    mkl-include \
    mypy \
    mypy_extensions \
    ncurses \
    ninja \
    numba \
    numpy \
    opencv \
    opt_einsum \
    pandas \
    pandoc \
    pillow \
    pip \
    pluggy \
    protobuf \
    py-opencv \
    pycrypto \
    pygments \
    pyopenssl \
    pytest \
    pyyaml \
    pyzmq \
    requests \
    scikit-learn \
    scipy \
    seaborn \
    setuptools \
    sphinx \
    sphinx_rtd_theme \
    statsmodels \
    sympy \
    tensorboard \
    termcolor \
    twine \
    typing \
    urllib3 \
    wrapt \
    zeromq \
    zstd \
;

echo "Installing base Python packages from conda-forge"

conda install -y -c conda-forge \
    awscli \
    boto3 \
    google-api-python-client \
    jupyter_contrib_nbextensions \
    pelican \
;
