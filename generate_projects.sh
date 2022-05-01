#!/usr/bin/env bash

BUILD_DIR="./build"
if [ -d "${BUILD_DIR}" ]; then
    echo "Removing existing ${BUILD_DIR}"
    rm -rf "${BUILD_DIR}"
fi

if [ ! -d "${BUILD_DIR}" ]; then
    mkdir "${BUILD_DIR}"
fi

pushd "${BUILD_DIR}"
cmake -S ../ -B ./Debug -DCMAKE_BUILD_TYPE=Debug
cmake -S ../ -B ./Release -DCMAKE_BUILD_TYPE=Release
popd