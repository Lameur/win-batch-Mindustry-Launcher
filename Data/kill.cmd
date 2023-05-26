@echo off
set K=0

:K
tasklist /fi "imagename eq java.exe" |find ":" > nul
if errorlevel 1 taskkill /F /IM "java.exe"

tasklist /fi "imagename eq mindustry.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "mindustry.exe"

tasklist /fi "imagename eq javaw.exe" |find ":" > nul
if errorlevel 1 taskkill /F /IM "javaw.exe"


if %K%==0 (goto K | set K=1)

ping localhost > nul