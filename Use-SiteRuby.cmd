@echo off
rem Keep these environment changes in the current Command Prompt session.
if not exist "%~dp0.tools\rubyinstaller-3.3.12-1-x64\bin\ruby.exe" (
    echo Local Ruby is missing. See README.md for setup instructions.
    exit /b 1
)
set "PATH=%~dp0.tools\rubyinstaller-3.3.12-1-x64\bin;%PATH%"
rem Do not reuse gems compiled for a different Ruby installation.
set "GEM_HOME="
set "GEM_PATH="
rem Reuse the Devkit already installed on this machine, when available.
if not defined MSYS2_PATH if exist "C:\Ruby40-x64\msys64\usr\bin\bash.exe" set "MSYS2_PATH=C:\Ruby40-x64\msys64"
ruby --version
