@echo off

echo Welcome to EXECompiler, %USERNAME%.
echo - %DATE%
echo - %CD%
echo.

echo Information regarding your directory folder:
echo  Your path input, if not default, should be in the format
echo C:\example1\example2\y\x
echo y should be the main folder you want it to be in
echo x should be the new name of the compressed folder (it will be generated)
echo IT IS VERY IMPORTANT TO NAME X AS A NEW DIRECTORY (NOT EXISTING)
echo.
echo if you use default as your directory, the folder will be named default
echo.
echo type "default" for the directory that this compiler is stored in
echo.
echo.
set /p targetDirectory= enter target directory: 

echo directory selected
echo directory confirmed
echo your compiled exe will be copied to %targetDirectory%
set destination=%targetDirectory%
)

set normalpath=%1
set normalpath=%normalpath: =*%
set destination=%destination: =*%

echo.
powershell -Command "Compress-Archive -Path %normalpath% -DestinationPath %destination%"
echo your file has successfully been copied
echo opening the folder which contains x
echo.

if targetDirectory!=default (
%SystemRoot%\explorer.exe "%~dp0"
pause
) else (
pause
)