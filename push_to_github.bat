@echo off
REM Push to GitHub using Personal Access Token
echo Pushing blog to GitHub...
echo.

REM GitHub credentials using token
set GIT_USERNAME=ridis
set GIT_PASSWORD=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
set GIT_REPO=https://github.com/ridis/monetization-guide.git

echo Step 1: Adding remote origin...
git remote set-url origin %GIT_REPO%

echo.
echo Step 2: Pushing to GitHub...
git push origin main --force

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
