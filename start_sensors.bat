@echo off
echo REMINDER: Make sure all 3 sensor modules are turned on!
echo.
echo Plug in the USB cable now if you haven't already.
echo.
pause
cd %USERPROFILE%\Desktop
python pressure.py
pause