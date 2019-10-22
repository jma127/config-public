#!/bin/bash

set -e

echo "Installing base Python packages from conda"

conda install -y \
    altair \
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
    intel-openmp \
    ipython \
    jinja2 \
    jupyter \
    jupyterlab \
    matplotlib \
    mkl \
    mkl-include \
    mypy \
    mypy_extensions \
    ninja \
    numba \
    numpy \
    opencv \
    pandas \
    pandoc \
    pillow \
    pip \
    pluggy \
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
    twine \
    typing \
    urllib3 \
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
