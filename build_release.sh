#!/usr/bin/env bash

set -e

BUILD_DIR="build/Release"
if [ -n "$1" ]; then
    BUILD_DIR="$1"
fi

if [ ! -d "${BUILD_DIR}" ]; then
    echo "No ${BUILD_DIR} folder found."
    exit 1
    set +e
fi

DO_CLEAN=""
if [ -n "$2" ]; then
    DO_CLEAN="--target clean"
fi

cmake --build ${BUILD_DIR} ${DO_CLEAN}

set +e