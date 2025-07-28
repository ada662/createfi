# CREATEFI Blockchain Startup Script
# Single Rust Project - No Cosmos SDK

Write-Host "🚀 CREATEFI Blockchain Starting..." -ForegroundColor Green
Write-Host "Next-generation DeFi blockchain platform built entirely in Rust" -ForegroundColor Cyan
Write-Host ""

# Check if Rust is installed
try {
    $rustVersion = rustc --version
    Write-Host "✅ Rust found: $rustVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Rust not found. Please install Rust from https://rustup.rs/" -ForegroundColor Red
    Write-Host "Run: winget install Rust.Rust" -ForegroundColor Yellow
    exit 1
}

# Check if Cargo.toml exists
if (-not (Test-Path "Cargo.toml")) {
    Write-Host "❌ Cargo.toml not found. Please run this script from the project root." -ForegroundColor Red
    exit 1
}

Write-Host "📦 Building CREATEFI blockchain..." -ForegroundColor Yellow

# Build the project
try {
    cargo build --release
    Write-Host "✅ Build completed successfully!" -ForegroundColor Green
} catch {
    Write-Host "❌ Build failed. Please check the error messages above." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "🎯 Token Information:" -ForegroundColor Cyan
Write-Host "   CREATE Token: 1,000,000,000 total supply" -ForegroundColor White
Write-Host "   Initial Price: $10.00 USD" -ForegroundColor White
Write-Host "   Your Allocation: 100,000,000 CREATE (10%)" -ForegroundColor White
Write-Host "   Your Value: $1,000,000,000 USD" -ForegroundColor Green
Write-Host "   Market Cap: $10,000,000,000 USD" -ForegroundColor White

Write-Host ""
Write-Host "🌐 Starting blockchain servers..." -ForegroundColor Yellow
Write-Host "   HTTP API: http://127.0.0.1:8080" -ForegroundColor Cyan
Write-Host "   WebSocket: ws://127.0.0.1:8081" -ForegroundColor Cyan
Write-Host ""

# Run the blockchain
try {
    Write-Host "🚀 Launching CREATEFI blockchain..." -ForegroundColor Green
    cargo run --release
} catch {
    Write-Host "❌ Failed to start blockchain. Please check the error messages above." -ForegroundColor Red
    exit 1
} 