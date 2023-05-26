@echo off
echo Mindustry is not registered, I will reg it for you, note that is per user.

ping localhost > nul

echo register Mindustry path...
pushd ..
set Reg=%CD%
setx mindustry_path "%Reg%

echo. && echo Mindustry path registred

@ping localhost > nul
