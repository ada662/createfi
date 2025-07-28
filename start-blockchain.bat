@echo off
REM CREATEFI Blockchain Startup Script for Command Prompt

echo.
echo ========================================
echo    🚀 CREATEFI Blockchain Starting...
echo ========================================
echo.

REM Set Rust environment variables
set CARGO_HOME=D:\Development\.cargo
set RUSTUP_HOME=D:\Development\.rustup
set PATH=D:\Development\.cargo\bin;%PATH%

REM Check if Rust is installed
D:\Development\.cargo\bin\cargo.exe --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Rust not found in D:\Development\.cargo\bin
    echo Please check your Rust installation
    pause
    exit /b 1
)

echo ✅ Rust found in D:\Development\.cargo\bin!
echo.

REM Check if Cargo.toml exists
if not exist "Cargo.toml" (
    echo ❌ Cargo.toml not found. Please run this script from the project root.
    pause
    exit /b 1
)

echo 📦 Building CREATEFI blockchain...
echo.

REM Build the project using the full path
D:\Development\.cargo\bin\cargo.exe build --release
if %errorlevel% neq 0 (
    echo ❌ Build failed. Please check the error messages above.
    pause
    exit /b 1
)

echo.
echo ✅ Build successful!
echo.
echo 🚀 Starting CREATEFI blockchain...
echo    API: http://127.0.0.1:8080
echo    WebSocket: ws://127.0.0.1:8081
echo.
echo Press Ctrl+C to stop the blockchain
echo.

REM Run the blockchain using the full path
D:\Development\.cargo\bin\cargo.exe run --release

pause 