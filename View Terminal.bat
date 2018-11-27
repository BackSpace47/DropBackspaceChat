@echo off
Title BView
:Refresh
REM
type msg.txt
tasklist /v | find /I /c "BChat" > nul
if %errorlevel%==1 goto ENDLOOP
Sleep 1
CLS
GOTO Refresh
:ENDLOOP
echo Cleaning Up...
call CH.bat
exit
