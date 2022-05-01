#!/usr/bin/env bash

set -e

BUILD_DIR="build/Debug"
./build_release.sh "${BUILD_DIR}" clean

set +e