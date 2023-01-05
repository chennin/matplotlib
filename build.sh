#!/bin/sh
set -e

# install dependencies
apk add --no-cache gcc g++ musl-dev make

# build
pip wheel --extra-index-url https://alpine-wheels.github.io/index --no-deps --requirement requirements.txt
