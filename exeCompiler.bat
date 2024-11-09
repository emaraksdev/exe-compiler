@echo off
echo %USERNAME% is running EXECOMPILER
echo directory %CD%
echo date %DATE%
echo.

echo if you do not use default, your target directory should be in the following format:
echo C:\example1\example2\example3\x
echo x should be the new folders name
set /p targetDirectory= enter target directory and file(type "default" for current directory): 

echo directory selected.
echo directory that will be copied to: %targetDirectory%
set destination=%targetDirectory%
)

set normalpath=%1
set normalpath=%normalpath: =*%
set destination=%destination: =*%

echo.
powershell -Command "Compress-Archive -Path %normalpath% -DestinationPath %destination%"
echo cloning sucessful, opening directory
echo.
echo if you used default as your directory, the folder will be named default

pause

%SystemRoot%\explorer.exe "%~dp0"