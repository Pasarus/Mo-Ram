@ECHO OFF
SETLOCAL

CD "%~dp0" >nul 2>&1

java -d64 -version 2>&1 | %SYSTEMROOT%\SYSTEM32\FIND.EXE "1.8"
ECHO.
IF %ERRORLEVEL% EQU 0 (
	ECHO INFO: Found 64-bit Java 1.8
	java -d64 -jar serverstarter-1.2.7.jar
) ELSE (
    ECHO ERROR: 64-bit Java 1.8 not found installed or on Path
)


 