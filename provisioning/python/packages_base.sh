#!/bin/bash

set -e

echo "Installing base Python packages from conda"

conda install -c conda-forge -y \
    altair \
    astor \
    awscli \
    babel \
    beautifulsoup4 \
    black \
    boto3 \
    cffi \
    cmake \
    cython \
    docutils \
    django \
    flake8 \
    flask \
    google-api-python-client \
    h5py \
    intel-openmp \
    ipython \
    jinja2 \
    jupyter \
    jupyterlab \
    lz4 \
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
    pelican \
    pillow \
    pip \
    pluggy \
    protobuf \
    pycrypto \
    pygments \
    pyopenssl \
    pytest \
    pyyaml \
    pyzmq \
    py-opencv \
    regex \
    requests \
    scikit-learn \
    scipy \
    seaborn \
    setuptools \
    sphinx \
    sphinx_rtd_theme \
    statsmodels \
    sympy \
    termcolor \
    twine \
    typing \
    urllib3 \
    wrapt \
    zeromq \
    zstd \
;

echo "Installing base Python packages from pip"

#pip install \
#    fastBPE \
#    sacremoses \
#    subword_nmt \
#;
