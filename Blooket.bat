@echo off
set Blook=%temp%\Blooket3.vbs
cls
if exist %Blook% (
title Blooket Module Found!
echo Automatically Running Blooket Module.
echo Please Ensure That You Have The Password To Run The Blooket Module
start %temp%\Blooket.vbs
timeout /t 2 /nobreak >nul
exit
)
if not exist %Blook% (
echo ===============================================================
echo  This Batch Has Been Compressed Into 2 Diffrent Files
echo.
echo  The Following Will Be Added (Blooket.vbs, Blook.html)
echo.
echo  When You Type " Install " We Will Add These Files To The Device
echo ===============================================================
set /p "AuthorizedPermission=Type Install "
if "%AuthorizedPermission%"=="Install" call :Install
echo Sorry You Did Not Agreed To Installing This Onto your Device...
echo Automatically Closing...
timeout /t 2 /nobreak >nul
exit
)
:Install
title Please Stand By While We Check On Your Device
echo Installing The Required Files For Blooket... Please Wait.
echo The Installed Files Will Be Password Protected! Please Ensure You Have The Password.
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/a.vbs -OutFile %Blook%" >nul
start %Blook%
exit