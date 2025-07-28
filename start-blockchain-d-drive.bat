@echo off
echo Setting up environment for D: drive...

REM Set environment variables to use D: drive
set CARGO_HOME=D:\Development\.cargo
set RUSTUP_HOME=D:\Development\.rustup
set NPM_CONFIG_CACHE=D:\npm-cache
set TEMP=D:\temp
set TMP=D:\temp

REM Add Rust to PATH
set PATH=D:\Development\.cargo\bin;%PATH%

echo Environment variables set:
echo CARGO_HOME=%CARGO_HOME%
echo RUSTUP_HOME=%RUSTUP_HOME%
echo NPM_CONFIG_CACHE=%NPM_CONFIG_CACHE%
echo TEMP=%TEMP%
echo TMP=%TMP%

echo.
echo Building blockchain...
D:\Development\.cargo\bin\cargo.exe build --release

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Build successful! Starting blockchain...
    D:\Development\.cargo\bin\cargo.exe run --release
) else (
    echo.
    echo Build failed! Check the errors above.
    pause
) 