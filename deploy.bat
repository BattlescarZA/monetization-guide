@echo off
REM GitHub Pages Deployment Script
REM This script will deploy your blog to GitHub Pages

echo ========================================
echo   BLOG DEPLOYMENT SCRIPT
echo ========================================
echo.

REM Check if Git is installed
where git >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

echo Step 1: Checking Git status...
git status

echo.
echo Step 2: Adding all files...
git add .

echo.
echo Step 3: Checking for changes...
git diff --cached --stat

pause

echo.
echo Step 4: Creating commit...
read /p COMMIT_MESSAGE="Enter commit message (or press Enter for default): "
if "%COMMIT_MESSAGE%"=="" set COMMIT_MESSAGE="Blog deployment - [DATE]"
git commit -m "%COMMIT_MESSAGE%"

echo.
echo Step 5: Setting remote (if not already set)...
git remote -v | findstr /C:"github.com" >nul
if %ERRORLEVEL% neq 0 (
    echo Setting remote origin to GitHub...
    read /p GITHUB_URL="Enter your GitHub repository URL (https://github.com/YOUR_USERNAME/monetization-guide.git): "
    git remote add origin %GITHUB_URL%
)

echo.
echo Step 6: Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo   DEPLOYMENT COMPLETE!
echo ========================================
echo.
echo Your blog is now live at:
echo https://YOUR_USERNAME.github.io/monetization-guide/
echo.
echo You can view your site here:
echo https://github.com/YOUR_USERNAME/monetization-guide/settings/pages
echo.
echo Don't forget to:
echo 1. Enable GitHub Pages in repository settings
echo 2. Add Google Analytics (optional)
echo 3. Share your link on social media
echo.
echo ========================================

pause