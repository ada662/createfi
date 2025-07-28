@echo off
echo Setting up environment for D: drive...

REM Set environment variables to use D: drive
set NPM_CONFIG_CACHE=D:\npm-cache
set TEMP=D:\temp
set TMP=D:\temp

echo Environment variables set:
echo NPM_CONFIG_CACHE=%NPM_CONFIG_CACHE%
echo TEMP=%TEMP%
echo TMP=%TMP%

echo.
echo Installing frontend dependencies...
cd frontend
npm install --cache D:\npm-cache

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Dependencies installed! Starting frontend...
    npm run dev
) else (
    echo.
    echo Installation failed! Check the errors above.
    pause
) 