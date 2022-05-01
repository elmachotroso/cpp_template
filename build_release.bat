@echo off

set PARAM1=%1
set PARAM2=%2

set BUILD_TYPE=Release
if defined PARAM1 set BUILD_TYPE=%PARAM1%

set BUILD_DIR=build/%BUILD_TYPE%

cd %BUILD_DIR% 2>NUL && cd .. || ( echo "No %BUILD_DIR% folder found." && exit /B 1 )

set DO_CLEAN=
if defined PARAM2 set DO_CLEAN=--target clean

cmake --build %BUILD_TYPE% %DO_CLEAN%