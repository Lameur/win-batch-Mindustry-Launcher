@echo off
title initialise Mindustry...
pushd Data
call reg.cmd
pushd ..
echo now, you may execute the launcher !!!
ping localhost > nul
pushd Data
call launcher.cmd
pushd ..

del first_launch.cmd | exit /B