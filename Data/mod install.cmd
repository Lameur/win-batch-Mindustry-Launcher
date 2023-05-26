@echo off
echo mods intallation...
ping localhost > nul
set l=%CD%
set l=%l%\mods
set mod_folder=%APPDATA%\Mindustry\mods
robocopy "%l%" "%mod_folder%" /MIR /UNICODE /TEE /X /V /UNILOG:mods_list.log
echo finish mods install !
ping localhost > nul
timeout 3