@echo off
cls
if exist run (goto installed) else (goto install)


:install
echo Welcome to Mindustry, I will install it for you, then you can play.
pushd ..
del "- first_launch.cmd"
pushd Data
echo downloading Mindustry...
call ghrel.exe Anuken/MindustryBuilds
call ghrel.exe Anuken/Mindustry
echo Mindustry was downloaded !
echo. > run

#pre chose
if %1==-B goto release
if %1==-R goto beta

:installed
echo what version of Mindustry you want launch ?
set /P Lr="the Release ver (R) or the Beta ver (B) : "
if /I %Lr%==R goto release
if /I %Lr%==B goto beta
goto error

:release
call Mindustry_Launcher.cmd
exit

:beta
call Mindustry_Beta_Launcher.cmd
ping localhost > nul
exit

:error
echo You don't have select a correct option, please retry
goto installed