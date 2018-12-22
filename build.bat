@echo off

setlocal
set thisdir=%~dp0
set COPYCMD=xcopy
set COPYOPT_FILE=/-Y
set COPYOPT_FOLDER=/-Y /S /E /I
set foldername=houtliner
set folderfull=%thisdir%%foldername%

if exist "%folderfull%" (
	rmdir /s %folderfull%
)
mkdir "%folderfull%"

%COPYCMD% "%thisdir%outline.hilight" "%folderfull%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%houtliner.mac" "%folderfull%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%create_zoomfile.bat" "%folderfull%" %COPYOPT_FILE%

%COPYCMD% "%thisdir%readme.txt" "%folderfull%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%README.md" "%folderfull%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%changelog.md" "%folderfull%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%LICENSE" "%folderfull%" %COPYOPT_FILE%

%COPYCMD% "%thisdir%sample.outline" "%folderfull%" %COPYOPT_FILE%

pause
