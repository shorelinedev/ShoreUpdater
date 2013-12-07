@ECHO OFF
:REPEAT
CLS
ECHO.
@ECHO OFF
ECHO ShoreDroid 4.4 Updater
ECHO.
ECHO [A] Update Boot
ECHO [B] Exit
ECHO.
SET /P mreply=Enter Choice :
IF %mreply% == a GOTO update
IF %mreply% == b GOTO C3
ECHO Not a valid choice!
PAUSE
GOTO REPEAT
:update
@ECHO ON
fastboot flash boot boot.img
GOTO REPEAT
:C3
@ECHO ON