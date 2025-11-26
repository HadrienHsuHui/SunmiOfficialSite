@echo off
REM SUNBAY Official Website Quick Deploy Script (Windows)

echo =============================
echo 🚀 SUNBAY Deployment Script
echo =============================
echo.

REM Check if Vercel CLI is installed
where vercel >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Vercel CLI not installed
    echo 📦 Installing Vercel CLI...
    call npm install -g vercel
    echo ✅ Vercel CLI installed
) else (
    echo ✅ Vercel CLI already installed
)

echo.
echo Please select deployment type:
echo 1^) Preview deployment
echo 2^) Production deployment
set /p choice="Enter option (1 or 2): "

if "%choice%"=="1" (
    echo.
    echo 🔄 Starting preview deployment...
    call vercel
) else if "%choice%"=="2" (
    echo.
    echo 🔄 Starting production deployment...
    call vercel --prod
) else (
    echo ❌ Invalid option
    exit /b 1
)

echo.
echo ✅ Deployment completed!
echo 🌐 Check the deployment URL above
pause
