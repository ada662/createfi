@echo off
echo ========================================
echo    CREATEFI - DeFi Platform Startup
echo ========================================
echo.

echo Setting up environment for D: drive...
set NPM_CONFIG_CACHE=D:\npm-cache
set TEMP=D:\temp
set TMP=D:\temp

echo.
echo Starting CREATEFI Backend Server...
start "CREATEFI Backend" cmd /k "cd /d D:\CREATEFI\server && npm start"

echo.
echo Starting CREATEFI Frontend...
start "CREATEFI Frontend" cmd /k "cd /d D:\CREATEFI\frontend && npm run dev"

echo.
echo ========================================
echo    CREATEFI Platform Starting...
echo ========================================
echo.
echo Backend API: http://localhost:8080
echo Frontend:    http://localhost:3000
echo WebSocket:   ws://localhost:8081
echo.
echo Both servers are starting in new windows.
echo Please wait a moment for them to fully load.
echo.
pause 