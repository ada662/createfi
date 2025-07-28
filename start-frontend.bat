@echo off
REM CREATEFI Frontend Startup Script for Command Prompt

echo.
echo ========================================
echo    🚀 CREATEFI Frontend Starting...
echo ========================================
echo.

echo Connecting to Rust blockchain at http://127.0.0.1:8080
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js not found. Please install Node.js from https://nodejs.org/
    echo Run: winget install OpenJS.NodeJS
    echo.
    echo If Node.js is installed but not found, try:
    echo 1. Restart Command Prompt
    echo 2. Add Node.js to PATH manually
    pause
    exit /b 1
)

echo ✅ Node.js found!
echo.

REM Check if frontend directory exists
if not exist "frontend" (
    echo ❌ Frontend directory not found. Please run this script from the project root.
    pause
    exit /b 1
)

REM Navigate to frontend directory
cd frontend

echo 📦 Installing frontend dependencies...
echo.

REM Install dependencies
npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies. Please check the error messages above.
    pause
    exit /b 1
)

echo.
echo ✅ Dependencies installed successfully!
echo.
echo 🌐 Starting CREATEFI frontend...
echo    Frontend: http://localhost:3000
echo    Backend: http://127.0.0.1:8080
echo.
echo Press Ctrl+C to stop the frontend
echo.

REM Start the development server
npm run dev

pause 