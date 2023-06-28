## This script update the shortcut to make sure there working
## This is here only for debbuging purpose

## mindustry launcher
$sourcepath = "./- Mindustry launcher.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\launcher.cmd"  ## Make changes
$shortcut.Save()  ## Save

## kill java
$sourcepath = "./kill java (don't forget this after a crash).lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\kill.cmd"  ## Make changes
$shortcut.Save()  ## Save

## Launcher Beta
$sourcepath = "./Mindustry launcher - Beta.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\launcher.cmd -B"  ## Make changes
$shortcut.Save()  ## Save

## Launcher Release
$sourcepath = "./Mindustry launcher - Release.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\launcher.cmd -R"  ## Make changes
$shortcut.Save()  ## Save

## Mod install
$sourcepath = "./mod install.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\mod install.cmd"  ## Make changes
$shortcut.Save()  ## Save

## Mod backup
$sourcepath = "./Mods backup.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\mod.cmd"  ## Make changes
$shortcut.Save()  ## Save

## Update
$sourcepath = "./Update.lnk"
Copy-Item $sourcepath $destination  ## Get the lnk we want to use as a template
$shell = New-Object -COM WScript.Shell
$shortcut = $shell.CreateShortcut($sourcepath)  ## Open the lnk
$shortcut.Arguments = "%mindustry_path%\Data\update.cmd"  ## Make changes
$shortcut.Save()  ## Save

## That all !
