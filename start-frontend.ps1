# CREATEFI Frontend Startup Script

Write-Host "🚀 CREATEFI Frontend Starting..." -ForegroundColor Green
Write-Host "Connecting to Rust blockchain at http://127.0.0.1:8080" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js found: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js not found. Please install Node.js from https://nodejs.org/" -ForegroundColor Red
    Write-Host "Run: winget install OpenJS.NodeJS" -ForegroundColor Yellow
    exit 1
}

# Check if frontend directory exists
if (-not (Test-Path "frontend")) {
    Write-Host "❌ Frontend directory not found. Please run this script from the project root." -ForegroundColor Red
    exit 1
}

# Navigate to frontend directory
Set-Location frontend

Write-Host "📦 Installing frontend dependencies..." -ForegroundColor Yellow

# Install dependencies
try {
    npm install
    Write-Host "✅ Dependencies installed successfully!" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to install dependencies. Please check the error messages above." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "🌐 Starting CREATEFI frontend..." -ForegroundColor Yellow
Write-Host "   Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "   Backend: http://127.0.0.1:8080" -ForegroundColor Cyan
Write-Host ""

# Start the development server
try {
    Write-Host "🚀 Launching CREATEFI frontend..." -ForegroundColor Green
    npm run dev
} catch {
    Write-Host "❌ Failed to start frontend. Please check the error messages above." -ForegroundColor Red
    exit 1
} 