@echo off
cd /d "%~dp0"
title Household Budget - Local Server (port 8001)
echo.
echo   Yedam Household Budget - Local Server
echo   ----------------------------------------
echo   URL    : http://localhost:8001
echo   Folder : %cd%
echo   Stop   : close this window or press Ctrl+C
echo   ----------------------------------------
echo.
start "" http://localhost:8001
python -m http.server 8001
echo.
echo   Server stopped. Press any key to close.
pause >nul
