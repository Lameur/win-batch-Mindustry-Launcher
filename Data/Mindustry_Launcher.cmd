@echo off
title Mindustry auto luncheur
set DIR=%~dp0
set exec=Mindustry.exe

call ghrel.exe -l Anuken/Mindustry > release_file.txt
call kill.cmd

:exe
if exist %exec% (
 start %exec%
 echo.
 echo Lunch 'Mindustry'!
 echo.
 goto eof
) else (
 echo.
 echo  Can't found 'Mindustry'!
 echo  Downloading Mindustry...
 call ghrel.exe Anuken/MindustryBuilds
 goto exe
 echo.
 timeout /T 3
)
:eof
 timeout /T 5