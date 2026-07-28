@echo off
echo REMINDER: Make sure all 3 sensor modules are turned on!
echo.
echo Plug in the USB cable now if you haven't already.
echo.
pause
for /f "delims=" %%i in ('powershell -command "[Environment]::GetFolderPath('Desktop')"') do set DESKTOP=%%i
cd /d "%DESKTOP%"
python pressure.py
pause