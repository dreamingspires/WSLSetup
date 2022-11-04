@echo off
set /p distroname="Enter chosen distro name: "
set /p fileloc="Enter path to tar file: "
set /p distropath="Enter path to distro: "
mkdir "%distropath%\%distroname%"
setlocal ENABLEDELAYEDEXPANSION
wsl --import "%distroname%" "%distropath%\%distroname%" "%fileloc%" --version 2

wsl -s %distroname%
echo.
wsl bash /home/startup.sh
echo.
wsl --shutdown
set /p irrelevent="That should be it^! Press enter to close"