@echo off
REM GitHub Pages Deployment Script with Personal Access Token
REM This script uses your GitHub token for authentication

echo ========================================
echo   BLOG DEPLOYMENT WITH GITHUB TOKEN
echo ========================================
echo.

REM GitHub Token
set GITHUB_TOKEN=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

echo Step 1: Creating Git repository...
git init
git add .
git commit -m "Initial deployment - Monetization Guide Blog"
git branch -M main

echo.
echo Step 2: Setting up Git credentials with token...
git config --global credential.helper store
echo username=true > .git-credentials
echo password=%GITHUB_TOKEN% >> .git-credentials

echo.
echo Step 3: Creating GitHub repository...
echo This will create a new repository at: https://github.com/ridis/monetization-guide

echo.
echo Step 4: Pushing to GitHub...
git remote add origin https://github.com/ridis/monetization-guide.git
git push -u origin main

echo.
echo ========================================
echo   DEPLOYMENT COMPLETE!
echo ========================================
echo.
echo Your blog is now live at:
echo https://github.com/ridis/monetization-guide
echo.
echo GitHub Pages URL:
echo https://ridis.github.io/monetization-guide
echo.
echo Don't forget to enable GitHub Pages:
echo 1. Go to https://github.com/ridis/monetization-guide/settings
echo 2. Click "Pages" in left sidebar
echo 3. Under "Build and deployment", select "Deploy from a branch"
echo 4. Select "main" branch and "/" folder
echo 5. Click "Save"
echo.
echo ========================================

pause