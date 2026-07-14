@echo off
chcp 65001 >nul
cd /d "%~dp0"
title 가계부 로컬 서버 (포트 8001)
echo.
echo   예닮 살림장부 - 로컬 서버
echo   ----------------------------------------
echo   주소   : http://localhost:8001
echo   폴더   : %cd%
echo   종료   : 이 창을 닫거나 Ctrl+C
echo   ----------------------------------------
echo.
start "" http://localhost:8001
python -m http.server 8001
echo.
echo   서버가 종료되었습니다. 아무 키나 누르면 창이 닫힙니다.
pause >nul
