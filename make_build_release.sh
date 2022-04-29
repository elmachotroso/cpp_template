#!/usr/bin/env bash

set -e

MAKE_OPTIONS=$1

BUILD_DIR="build"

if [ ! -d "${BUILD_DIR}" ]; then
    echo "No ${BUILD_DIR} folder found."
    exit 1
    set +e
fi

pushd "${BUILD_DIR}"
if [ -n "${MAKE_OPTIONS}" ]; then
    echo "make ${MAKE_OPTIONS}"
    make ${MAKE_OPTIONS}
else
    echo "make"
    make
fi
popd

set +e