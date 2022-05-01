@echo off

set BUILD_DIR=build
cd %BUILD_DIR% 2>NUL && cd .. && rmdir /S /Q %BUILD_DIR%
cd %BUILD_DIR% 2>NUL && cd .. || mkdir %BUILD_DIR%

cd %BUILD_DIR%
cmake -G "Unix Makefiles" -S ../ -B ./Debug -DCMAKE_BUILD_TYPE=Debug
cmake -G "Unix Makefiles" -S ../ -B ./Release -DCMAKE_BUILD_TYPE=Release
cd ..