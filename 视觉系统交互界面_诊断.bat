@echo off
setlocal
set "WORK_DIR=D:\robot_projects\robotgame\赛前训练\UI交互界面"
set "PY_EXE=C:\Users\24358\.workbuddy\binaries\python\envs\robotgui\Scripts\python.exe"
set "LOG=%WORK_DIR%\runtime.log"
cd /d "%WORK_DIR%"
echo [%date% %time%] start >> "%LOG%"
echo starting visual GUI ...
echo project: %WORK_DIR%
echo python:  %PY_EXE%
if not exist "%PY_EXE%" (
  echo ERROR: python not found >> "%LOG%"
  echo ERROR: python not found
  pause
  exit /b 1
)
"%PY_EXE%" "main.py"
set "EC=%errorlevel%"
echo [%date% %time%] exit code: %EC% >> "%LOG%"
echo.
echo program exited with code %EC%
pause
