@ECHO OFF
SETLOCAL

SET BUILD_DIR=BuildRelWithDebInfo64
SET BUILD_TARGET_PATH=%~dp0..\%BUILD_DIR%

IF NOT EXIST "%BUILD_TARGET_PATH%" MKDIR "%BUILD_TARGET_PATH%"

PUSHD "%BUILD_TARGET_PATH%"
cmake ../Projects -G "Visual Studio 15 2017 Win64"
CD ..
cmake --build "%BUILD_DIR%" --config RelWithDebInfo
POPD

ECHO done