@echo off
echo Installing dependencies...
call npm install
if errorlevel 1 goto fail
echo Building Code-Editor.exe ...
call npm run build
if errorlevel 1 goto fail
echo.
echo Done. Your exe is in the "dist" folder.
pause
exit /b 0
:fail
echo.
echo Build failed. Make sure Node.js is installed from https://nodejs.org
pause
exit /b 1
