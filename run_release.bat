@echo off

set PARAM1=%1
set PARAM2=%2

set BUILD_TYPE=Release
if defined PARAM1 set BUILD_TYPE=%PARAM1%

set APP_BINARY=app
if defined PARAM2 set APP_BINARY=%PARAM2%

set EXECUTABLE=bin\%BUILD_TYPE%\%APP_BINARY%.exe
.\%EXECUTABLE%