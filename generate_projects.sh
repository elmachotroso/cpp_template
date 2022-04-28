#!/usr/bin/env bash

BUILD_DIR="./build"
if [ -d "${BUILD_DIR}" ]; then
    echo "Removing existing ${BUILD_DIR}"
    rm -rf "${BUILD_DIR}"
fi

if [ ! -d "${BUILD_DIR}" ]; then
    mkdir "${BUILD_DIR}"
fi

cd "${BUILD_DIR}"
cmake ../
