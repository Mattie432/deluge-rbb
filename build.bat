taskkill /f /im deluge-debug.exe
set scriptdrive=%~d0
set scriptpath=%~p0
if "%ProgramFiles(x86)%"=="" (set delugepath="%ProgramFiles%") else (set delugepath="%ProgramFiles(x86)%")

%scriptdrive%
cd %scriptdrive%%scriptpath%
python setup.py bdist_egg
copy dist\* %APPDATA%\deluge\plugins

%delugepath%\Deluge\deluge-debug.exe
