@echo off
title initialise Mindustry...

cd "%~dp0Data"
if exist run del run
attrib +R +S +H launcher.cmd
call reg.cmd
cd ..

attrib +H "%~dp0update_shortcut.ps1"
attrib +R +H "%~dp0Data" /D

echo.
echo execute the launcher...
ping localhost > nul

cd "%~dp0Data"
start launcher.cmd
cd ..
del "- first_launch.cmd" | exit /B