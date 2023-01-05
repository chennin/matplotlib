#!/bin/sh
set -e

# install dependencies
apk add --no-cache gcc g++ musl-dev make
pip install --extra-index-url https://alpine-wheels.github.io/index numpy

# build
pip wheel --no-deps --requirement requirements.txt
