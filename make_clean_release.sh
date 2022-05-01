#!/usr/bin/env bash

set -e

BUILD_DIR="build/Release"
./make_build_release.sh "${BUILD_DIR}" clean

set +e