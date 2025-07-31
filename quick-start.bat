@echo off
echo ================================================
echo   South Korea AR Map - Quick Start
echo ================================================
echo.
echo This script will help you get started with your AR map project.
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH.
    echo Please install Python from https://python.org
    echo.
    pause
    exit /b 1
)

echo [✓] Python is installed
echo.

REM Check current directory
if not exist "index.html" (
    echo [ERROR] Please run this script from the project folder
    echo Make sure you're in the same folder as index.html
    echo.
    pause
    exit /b 1
)

echo [✓] Found project files
echo.

REM Create assets folders if they don't exist
if not exist "assets" mkdir assets
if not exist "assets\images" mkdir assets\images
if not exist "assets\videos" mkdir assets\videos

echo [✓] Created assets folders
echo.

echo ================================================
echo   Setup Instructions
echo ================================================
echo.
echo 1. Print your map (any size: A4, A3, poster - all work!)
echo 2. Add map photo to: assets\images\map-reference.jpg
echo 3. Generate targets.mind file using MindAR compiler
echo 4. Add videos to assets\videos\ (optional)
echo 5. Test locally using this script
echo.
echo [TIP] A3 size (30x42cm) is recommended for best experience
echo.

:menu
echo ================================================
echo   Choose an option:
echo ================================================
echo 1. Start local development server
echo 2. Open development dashboard
echo 3. Open MindAR image target compiler
echo 4. Show project status
echo 5. Check size recommendations
echo 6. Move targets.mind from Downloads
echo 7. Exit
echo.
set /p choice="Enter your choice (1-7): "

if "%choice%"=="1" goto :start_server
if "%choice%"=="2" goto :open_dashboard
if "%choice%"=="3" goto :open_compiler
if "%choice%"=="4" goto :show_status
if "%choice%"=="5" goto :size_guide
if "%choice%"=="6" goto :move_targets
if "%choice%"=="7" goto :exit
goto :menu

:start_server
echo.
echo Starting local development server...
echo Server will be available at: http://localhost:8000
echo.
echo [IMPORTANT] For AR camera access, you'll need to deploy to GitHub Pages
echo This local server is for basic testing only.
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000
goto :menu

:open_dashboard
echo.
echo Opening development dashboard...
start dev-dashboard.html
goto :menu

:open_compiler
echo.
echo Opening MindAR image target compiler...
start https://hiukim.github.io/mind-ar-js-doc/tools/compile
echo.
echo Instructions:
echo 1. Upload your assets\images\map-reference.jpg
echo 2. Download the generated targets.mind file
echo 3. Place it in the assets\ folder
echo.
pause
goto :menu

:show_status
echo.
echo ================================================
echo   Project Status
echo ================================================
echo.

if exist "assets\images\map-reference.jpg" (
    echo [✓] Map reference image found
) else (
    echo [✗] Map reference image missing: assets\images\map-reference.jpg
)

if exist "assets\targets.mind" (
    echo [✓] Image target file found
) else (
    echo [✗] Image target file missing: assets\targets.mind
)

echo.
echo Video files:
for %%f in (assets\videos\*.mp4) do (
    echo [✓] Found: %%f
)

if not exist "assets\videos\*.mp4" (
    echo [!] No video files found (optional - you can use YouTube links)
)

echo.
echo Required next steps:
if not exist "assets\images\map-reference.jpg" echo - Add your map photo
if not exist "assets\targets.mind" echo - Generate image target file
echo - Test on mobile device (deploy to GitHub Pages)
echo.
pause
goto :menu

:size_guide
echo.
echo ================================================
echo   Map Size Recommendations
echo ================================================
echo.
echo ANY SIZE WORKS! Here are the recommendations:
echo.
echo [A4] 21x30cm - Good for personal use
echo      Viewing distance: 20-40cm from phone
echo.
echo [A3] 30x42cm - RECOMMENDED for most uses
echo      Viewing distance: 40-70cm from phone
echo      Best balance of size and portability
echo.
echo [Poster] A2+ - Great for groups/presentations
echo           Viewing distance: 70-120cm from phone
echo.
echo IMPORTANT:
echo - Use the SAME reference photo regardless of final print size
echo - Adjust viewing distance based on your printed size
echo - Matte finish works better than glossy paper
echo.
echo For detailed guidance, see: size-guide.md
echo.
pause
goto :menu

:move_targets
echo.
echo ================================================
echo   Move targets.mind File
echo ================================================
echo.
echo Looking for targets.mind in common locations...
echo.

REM Check Downloads folder
set "downloads_path=%USERPROFILE%\Downloads\targets.mind"
if exist "%downloads_path%" (
    echo [✓] Found targets.mind in Downloads folder
    copy "%downloads_path%" "assets\targets.mind" >nul 2>&1
    if exist "assets\targets.mind" (
        echo [✓] Successfully moved targets.mind to assets folder
        echo [!] You can now delete the file from Downloads if you want
    ) else (
        echo [✗] Failed to copy file. Try manual copy.
    )
) else (
    echo [!] targets.mind not found in Downloads folder
    echo.
    echo Please manually copy targets.mind to the assets folder:
    echo 1. Find targets.mind on your computer
    echo 2. Copy it to: %CD%\assets\targets.mind
    echo.
    echo Common locations to check:
    echo - %USERPROFILE%\Downloads\
    echo - %USERPROFILE%\Desktop\
    echo - Browser default download folder
)

echo.
pause
goto :menu

:exit
echo.
echo Thank you for using South Korea AR Map!
echo.
echo For help, check:
echo - README.md
echo - setup-guide.md
echo.
pause
exit /b 0
