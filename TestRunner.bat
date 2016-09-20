@echo off

:: Verify that Python is installed
where python >nul 2>nul
if not %errorlevel% == 0 (
  echo.
  echo Python is not detected.
  echo Please run "Python Setup.bat" and reboot your computer.
  echo.
  pause
  exit
)

:: Determine if OS is Win10
ver | findstr /i "10\." > nul
if %ERRORLEVEL% == 0 set "win10=true"

:browserselect
cls
echo.
echo Browser Selection
echo.
echo 1. All
echo 2. Google Chrome
echo 3. Mozilla Firefox
if "%win10%" == "true" echo 4. Microsoft Edge
echo.

set /p browser="Please select a browser to run the automated tests: "

if %browser% == 1 (
   echo.
   echo Starting automation in all browsers...
   echo.
   echo Chrome
   echo.
   python C:\Python27\Scripts\mate1inc.py chrome
   echo.
   echo Firefox
   echo.
   python C:\Python27\Scripts\mate1inc.py firefox
   echo.   
   echo Edge
   echo.	
   python C:\Python27\Scripts\mate1inc.py edge
   @timeout 3
   start C:\Python27\Scripts\mate1Profile_CH.html
   start C:\Python27\Scripts\mate1Profile_FF.html
   start C:\Python27\Scripts\mate1Profile_Edge.html
   goto end
)

if %browser% == 2 (
   echo.
   echo Starting automation in Chrome...
   echo.
   python C:\Python27\Scripts\mate1inc.py chrome
   @timeout 3
   start C:\Python27\Scripts\mate1Profile_CH.html		
   goto end
)

if %browser% == 3 (
   echo.
   echo Starting automation in Firefox...
   echo.
   python C:\Python27\Scripts\mate1inc.py firefox
   @timeout 3
   start C:\Python27\Scripts\mate1Profile_FF.html
   goto end
)

if %browser% == 4 if "%win10%" == "true" (
   echo.
   echo Starting automation in Edge...
   echo.
   python C:\Python27\Scripts\mate1inc.py edge
   @timeout 3
   start C:\Python27\Scripts\mate1Profile_Edge.html
   goto end
)

if %browser% NEQ 1 if %browser% NEQ 2 if %browser% NEQ 3 if %browser% NEQ 4 (
   echo.
   echo 'Not a valid choice'
   pause
   goto browserselect
)
:end