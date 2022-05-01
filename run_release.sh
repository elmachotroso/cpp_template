#!/usr/bin/env bash

set -e
BUILD_TYPE="Release"
if [ -n "$1" ]; then
    BUILD_TYPE="$1"
fi

APP_BINARY="app"
if [ -n "$2" ]; then
    APP_BINARY="$2"
fi

EXECUTABLE="bin/${BUILD_TYPE}/${APP_BINARY}"
if [ ! -x "${EXECUTABLE}" ]; then
    echo "Could not find or execute ${EXECUTABLE}. Make sure it exists or have sufficient permissions."
    exit 1
    set +e
fi
./${EXECUTABLE}
set +e