@echo off
cls
echo ========================================================
echo        Anti-Gravity Customizations Auto-Setup
echo ========================================================
echo.
echo This script will install custom model rules, eni skill,
echo and rule management switchers to your global configuration
echo and place switcher shortcuts on your Desktop.
echo.
echo Current Repo Path: %~dp0
echo.

set REPO_DIR=%~dp0
set GLOBAL_CONFIG_DIR=C:\Users\Adnan\.gemini\config
set DESKTOP_DIR=C:\Users\Adnan\Desktop

echo 1. Creating global directories...
if not exist "%GLOBAL_CONFIG_DIR%" mkdir "%GLOBAL_CONFIG_DIR%"
if not exist "%GLOBAL_CONFIG_DIR%\.agents" mkdir "%GLOBAL_CONFIG_DIR%\.agents"
if not exist "%GLOBAL_CONFIG_DIR%\skills\eni" mkdir "%GLOBAL_CONFIG_DIR%\skills\eni"

echo 2. Copying rule files to global configuration...
copy /Y "%REPO_DIR%.agents\*.md" "%GLOBAL_CONFIG_DIR%\.agents\" >nul

echo 3. Copying eni skill files globally...
xcopy /Y /E "%REPO_DIR%.agents\skills\eni\*" "%GLOBAL_CONFIG_DIR%\skills\eni\" >nul

echo 4. Copying switcher scripts to Desktop...
copy /Y "%REPO_DIR%set-rules.py" "%DESKTOP_DIR%\" >nul
copy /Y "%REPO_DIR%set-rules.bat" "%DESKTOP_DIR%\" >nul

echo 5. Copying master switcher to global configuration...
copy /Y "%REPO_DIR%set-rules.py" "%GLOBAL_CONFIG_DIR%\" >nul

echo 6. Initializing and combining rules globally...
python "%DESKTOP_DIR%\set-rules.py" all

echo.
echo ========================================================
echo Setup Completed Successfully!
echo.
echo You can now use the "set-rules.bat" on your Desktop to 
echo select and swap model rules anytime!
echo ========================================================
echo.
pause
