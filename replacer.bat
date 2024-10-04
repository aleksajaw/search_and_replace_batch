@echo off
setlocal EnableDelayedExpansion

call :printStr lineToPrint 100 -
call :multipleEcho 10

@echo %lineToPrint%
@echo.   Script Start
@echo %lineToPrint%

call :multipleEcho 3

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

:multipleEcho
(
  set "nrOfLoops=%~1"
  for /L %%e in (1, 1, !nrOfLoops!) do (
    echo.
  )
)
(
    exit /b
)

:printStr
(
    set "strLength=%~2"
    set "returnStr="
    set "repeatedChar=%~3"
    for /L %%f in (1, 1, !strLength!) do (
        set "returnStr=!returnStr!!repeatedChar!"
    )
)
(
    set "%~1=%returnStr%"
    exit /b
)