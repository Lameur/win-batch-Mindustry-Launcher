@echo off
title Mindustry Beta auto luncheur
set DIR=%~dp0

if exist beta_old_file.txt (del beta_old_file.txt)
if exist beta_file.txt (ren beta_file.txt beta_old_file.txt)

:exe
:: update check
call ghrel.exe -l Anuken/MindustryBuilds > beta_file.txt
for /f "tokens=* delims=:" %%a in ('type beta_file.txt^|find "Desktop"') do (
  set exec=%%a & goto :update
)
:update

:: delete old file if exist.
if not exist beta_old_file.txt (goto next)
for /f "tokens=* delims=:" %%a in ('type beta_old_file.txt^|find "Desktop"') do (
  set old_ver=%%a & goto :del
)
:del
if not %old_ver%==%exec% (goto del_old)

:next
if exist %exec% (
 start %exec%
 echo.
 echo Lunch 'Mindustry Beta'!
 echo.
 goto eof
) else (
 echo.
 echo  Updating Mindustry...
 call ghrel.exe Anuken/MindustryBuilds
 goto exe
 echo.
 timeout /T 3
)
:eof
 timeout /T 5
exit

:del_old

for /f "tokens=* delims=:" %%a in ('type beta_old_file.txt^|find "Server"') do (
  set del=%%a & goto :del_server
)
:del_server
del %del%

for /f "tokens=* delims=:" %%a in ('type beta_old_file.txt^|find ".apk"') do (
  set del=%%a & goto :del_apk
)
:del_apk
del %del%

for /f "tokens=* delims=:" %%a in ('type beta_old_file.txt^|find "Desktop"') do (
  set del=%%a & goto :del_desktop
)
:del_desktop
del %del%

goto next