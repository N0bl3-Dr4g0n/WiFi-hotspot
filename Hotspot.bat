echo off
color A
cls
echo ------------------------------------
echo 1. Start WiFi Hotspot
echo 2. Stop Hotspot
echo 3. Create a new hotspot
echo ------------------------------------
set /p c= Choose your option :
if "%c%"=="1" goto start
if "%c%"=="2" goto stop
if "%c%"=="3" goto new

:start 
netsh wlan start hostednetwork
goto fin

:stop
netsh wlan stop hostednetwork
goto fin 

:new
set /p ssid=Choose your Hotspot name : 
set /p pwd= Enter your new password : 
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%pwd%
goto fin

:fin
pause
