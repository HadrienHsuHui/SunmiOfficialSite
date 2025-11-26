@echo off
REM SUNBAY Official Website GitHub Setup Script (Windows)

echo =============================
echo 🚀 SUNBAY GitHub Setup Wizard
echo =============================
echo.

REM Check if Git repository already exists
if exist ".git" (
    echo ⚠️  Existing Git repository detected
    set /p reinit="Do you want to reinitialize? (y/N): "
    if /i "%reinit%"=="y" (
        rmdir /s /q .git
        echo ✅ Old Git repository removed
    ) else (
        echo ℹ️  Keeping existing Git repository
    )
)

REM Initialize Git repository
if not exist ".git" (
    echo.
    echo 📦 Initializing Git repository...
    git init
    echo ✅ Git repository initialized
)

REM Configure Git user information
echo.
echo 👤 Configure Git user information
set /p git_username="Enter your Git username: "
set /p git_email="Enter your Git email: "

git config user.name "%git_username%"
git config user.email "%git_email%"
echo ✅ Git user information configured

REM Add files
echo.
echo 📝 Adding files to Git...
git add .
echo ✅ Files added

REM Commit
echo.
set /p commit_message="Enter commit message (default: Initial commit): "
if "%commit_message%"=="" set commit_message=Initial commit: SUNBAY Official Website
git commit -m "%commit_message%"
echo ✅ Commit completed

REM Rename branch to main
echo.
echo 🌿 Renaming branch to main...
git branch -M main
echo ✅ Branch renamed

REM Add remote repository
echo.
echo 🔗 Adding remote repository
set /p github_username="Enter your GitHub username: "
set /p repo_name="Enter repository name (default: sunbay-official-site): "
if "%repo_name%"=="" set repo_name=sunbay-official-site

set remote_url=https://github.com/%github_username%/%repo_name%.git
echo Remote repository URL: %remote_url%

REM Check if remote repository already exists
git remote | findstr "origin" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo ⚠️  Existing remote repository detected
    git remote remove origin
)

git remote add origin "%remote_url%"
echo ✅ Remote repository added

REM Push to GitHub
echo.
echo 🚀 Preparing to push to GitHub...
echo ⚠️  Please ensure you have created the repository on GitHub: %repo_name%
set /p push_now="Push now? (y/N): "

if /i "%push_now%"=="y" (
    echo.
    echo 📤 Pushing to GitHub...
    git push -u origin main
    
    if %ERRORLEVEL% EQU 0 (
        echo.
        echo ================================
        echo ✅ Successfully pushed to GitHub!
        echo ================================
        echo.
        echo 🌐 Repository URL: https://github.com/%github_username%/%repo_name%
        echo.
        echo 📋 Next steps:
        echo 1. Visit https://vercel.com
        echo 2. Import your GitHub repository
        echo 3. Configure and deploy
        echo.
        echo 📖 See GITHUB-SETUP.md for details
    ) else (
        echo.
        echo ❌ Push failed
        echo Please check:
        echo 1. GitHub repository exists
        echo 2. You have push permissions
        echo 3. Network connection is stable
        echo.
        echo Manual push command:
        echo git push -u origin main
    )
) else (
    echo.
    echo ℹ️  Skipping push
    echo.
    echo Manual push command:
    echo git push -u origin main
)

echo.
echo ================================
echo ✅ GitHub setup completed!
echo ================================
pause
