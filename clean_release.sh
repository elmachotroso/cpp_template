#!/usr/bin/env bash

set -e

BUILD_DIR="build/Release"
./build_release.sh "${BUILD_DIR}" clean

set +e