@echo off
setlocal

set databasename=%1
set datafolderdir=%2

rem ========= [ Custom datafile location ========
set datafoldername=zoomfiles
set dataext=.md
rem ========= Custom datafile location ] ========

rem 1) argcheck
rem -----------

if "%databasename%"=="" (
	echo Param1: No data basename given.
	pause
	exit /b
)

if "%datafolderdir%"=="" (
	echo Param2: No datafolder directory given.
	pause
	exit /b
)

rem 2) datafolder check
rem -------------------

set datafolderfull=%datafolderdir%\%datafoldername%
if not exist "%datafolderfull%" (
	mkdir "%datafolderfull%"
)

rem 3) datafile
rem -----------

set datafilename=%databasename%%dataext%
set datafilefull=%datafolderfull%\%datafilename%

if not exist "%datafilefull%" (
	echo.> "%datafilefull%"
)
start "" "%datafilefull%"
exit /b
