@echo off
setlocal
call "%~dp0Use-SiteRuby.cmd"
if errorlevel 1 exit /b 1
pushd "%~dp0docs"
if errorlevel 1 exit /b 1
echo Website preview: http://localhost:4000/
rem Resolve Jekyll through Bundler even when its executable shim is absent.
ruby -rbundler/setup -e "load Gem.bin_path('jekyll', 'jekyll')" -- serve --host 127.0.0.1 --port 4000 --watch
set "previewExitCode=%ERRORLEVEL%"
popd
exit /b %previewExitCode%
