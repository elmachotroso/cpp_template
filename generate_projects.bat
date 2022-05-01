@echo off

SET BUILD_DIR = "build"
rmdir /S /Q %BUILD_DIR%
mkdir %BUILD_DIR%
cd %BUILD_DIR%
cmake -S ../ -B ./Debug -DCMAKE_BUILD_TYPE=Debug
cmake -S ../ -B ./Release -DCMAKE_BUILD_TYPE=Release
cd ..