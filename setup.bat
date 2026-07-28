@echo off
echo Setting up Pressure Sensor...
echo.

echo Step 1: Checking if Python is installed...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found! Please install Python from python.org
    echo Make sure to check "Add Python to PATH" during install!
    pause
    start https://www.python.org/downloads/
    exit
)
echo Python found!
echo.

echo Step 2: Installing required library...
pip install pyserial
echo.

echo Step 3: Downloading pressure.py...
curl -L "https://github.com/Riaanshah09/pressure-sensor/raw/main/pressure.py" -o "%USERPROFILE%\OneDrive\Desktop\pressure.py"

echo Step 4: Downloading start_sensors.bat...
curl -L "https://github.com/Riaanshah09/pressure-sensor/raw/main/start_sensors.bat" -o "%USERPROFILE%\OneDrive\Desktop\start_sensors.bat"

echo.
echo Setup complete!
echo.
echo REMINDER: Make sure all 3 sensor modules are turned on, then plug in the USB cable.
echo From now on just plug in USB and double click start_sensors.bat on your Desktop.
pause