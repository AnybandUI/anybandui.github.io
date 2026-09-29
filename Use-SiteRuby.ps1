# Dot-source this script to select the site's Ruby in the current PowerShell session.
$siteRubyBin = Join-Path $PSScriptRoot '.tools\rubyinstaller-3.3.12-1-x64\bin'
if (-not (Test-Path (Join-Path $siteRubyBin 'ruby.exe'))) {
    throw 'Local Ruby is missing. See README.md for setup instructions.'
}
$env:Path = "$siteRubyBin;$env:Path"
# Do not reuse gems compiled for a different Ruby installation.
Remove-Item Env:GEM_HOME, Env:GEM_PATH -ErrorAction SilentlyContinue
# Reuse the Devkit already installed on this machine, when available.
if (-not $env:MSYS2_PATH -and (Test-Path 'C:\Ruby40-x64\msys64\usr\bin\bash.exe')) {
    $env:MSYS2_PATH = 'C:\Ruby40-x64\msys64'
}
& ruby --version
