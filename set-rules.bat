@echo off
:menu
cls
echo ===================================================
echo          Antigravity Jailbreak Switcher
echo ===================================================
echo.
echo Select the ruleset to apply:
echo.
echo  [1] Gemini 3.5 Flash (High/Medium/Low)
echo  [2] Gemini 3.1 Pro (Low/High)
echo  [3] Claude Sonnet 4.6 (Thinking)
echo  [4] Claude Opus 4.6 (Thinking)
echo  [5] GPT-OSS 120B (Medium)
echo  [6] Combine ALL models (Unified AGENTS.md)
echo  [7] Exit
echo.
echo ===================================================
set /p choice="Enter choice [1-7]: "

if "%choice%"=="1" goto flash
if "%choice%"=="2" goto pro
if "%choice%"=="3" goto sonnet
if "%choice%"=="4" goto opus
if "%choice%"=="5" goto gpt
if "%choice%"=="6" goto all
if "%choice%"=="7" goto end

echo.
echo Invalid selection. Please enter a number between 1 and 7.
echo.
pause
goto menu

:flash
echo.
python "%USERPROFILE%\Desktop\set-rules.py" flash
echo.
pause
goto menu

:pro
echo.
python "%USERPROFILE%\Desktop\set-rules.py" pro
echo.
pause
goto menu

:sonnet
echo.
python "%USERPROFILE%\Desktop\set-rules.py" sonnet
echo.
pause
goto menu

:opus
echo.
python "%USERPROFILE%\Desktop\set-rules.py" opus
echo.
pause
goto menu

:gpt
echo.
python "%USERPROFILE%\Desktop\set-rules.py" gpt
echo.
pause
goto menu

:all
echo.
python "%USERPROFILE%\Desktop\set-rules.py" all
echo.
pause
goto menu

:end
echo.
echo Goodbye!
echo.
exit
