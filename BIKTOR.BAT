plus33 %1/%2 @BIKTOR.SQL
sqlldr userid=%1/%2 control=BIKTOR.CTL log=BIKTOR.log bad=BIKTOR.bad
if errorlevel==1 goto error
goto exit
:error
echo ERROR: File \\tsclient\C\wtarka\dbf\BIKTOR.DBF was not imported ! >> import.log
:exit
