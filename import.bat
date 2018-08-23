@echo off
echo Log started ... > import.log
call BIKTOR.BAT %1 %2
echo Log closed. >> import.log
