@echo off
echo backup mods...
ping localhost > nul
pushd ..
set l=%CD%
set l=%l%\mods_backup
set mod_folder=%APPDATA%\Mindustry\mods
robocopy "%mod_folder%" "%l%" /MIR /UNICODE /TEE /X /V /COMPRESS /UNILOG:mods_list_backup.log
echo mods backup finish
echo check the mods backup folder
ping localhost > nul
timeout 3