@echo off
title initialise Mindustry...

pushd Data
call reg.cmd
pushd ..

attrib +H "%~dp0update_shortcut (Do not execute this, it will break all).ps1"
attrib +H "%~dp0Data" /D

echo now, you may execute the launcher !!!
ping localhost > nul

pushd Data
call launcher.cmd
pushd ..

del "- first_launch.cmd" | exit /B