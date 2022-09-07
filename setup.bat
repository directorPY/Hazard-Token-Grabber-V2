@echo off
cd /d %~dp0
python --version 3>NUL
if errorlevel 1 goto errorNoPython
pip -v>NUL
if errorlevel 1 goto errorNoPip
python -m pip install --upgrade -r requirements.txt
pip -v>NUL
if errorlevel 1 goto errorNoPyinstaller
cls
start build-exe.bat
pause
exit


:errorNoPython
echo Python is not installed on your system or not added to path!!!
pause
exit

:errorNoPip
echo Pip is not installed on your system or not added to path!!!
pause
exit

:errorNoPyinstaller
echo Pyinstaller was not installed correctly meaning it wasn't added to path. Please fix this
pause
exit
