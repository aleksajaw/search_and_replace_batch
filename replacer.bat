@echo off
setlocal EnableDelayedExpansion


set "x="
set "mainDirPath=C:\Program files\"
set "furtherDirPath=xampp"
set "folderPath=!mainDirPath!!furtherDirPath!\"
set "searchingString=D:/Program files2"


for /f "tokens=1,2* delims=:" %%a in ('findstr "%%searchingString%%" "%%folderPath%%*.*"') do (
Rem for /f "tokens=1,2,3* delims=:" %%a in ('findstr /iln "%%searchingString%%" "%%folderPath%%*.*"') do (
Rem for /f %%a in ('findstr /r "%%searchingString%%" "%%folderPath%%*.*"') do ( 
  set "y=%%a:%%b"
  if not !x! == !y! (
   set "x=!y!"
   @echo !x!
   @echo.
  )
  Rem  @echo %%c
  Rem  @echo %%d
  Rem  @echo.
)
PAUSE