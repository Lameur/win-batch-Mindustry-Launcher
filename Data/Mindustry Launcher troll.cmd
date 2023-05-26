@echo off
title Mindustry auto luncheur
rem start Rick Astley - Never Gonna Give You Up (Official Music Video).mp4
for /f "tokens=*" %%a in ('dir /b /od "%Rick-Astley---Never-Gonna-Give-You-Up.mp4%*.mp4"') do set "Rick-Astley---Never-Gonna-Give-You-Up.mp4=%%a"
if exist "%~dp0%Rick Astley - Never Gonna Give You Up.mp4%" (
 start "Rick-Astley---Never-Gonna-Give-You-Up.mp4" /d"%~dp0" "%~dp0%Rick-Astley---Never-Gonna-Give-You-Up.mp4%" %1 %2 %3 %4 %5 %6 %7 %8 %9 
 echo.
 echo Lunch 'Mindustry'!
 echo.
 goto ex
) else (
 echo.
 echo  Can't found 'Mindustry'!
 echo.
)
:ex
exit