:: creator : userdev265scratchandpython
:: commit date : 04/09/24
:: vertion of the loader script : v1.2
:: made in batch and MS VBScript
:: licence : GPL 3.0
:: Use With Caution

:: set the color to white on black
color 0f

@echo off
cls

echo ie11 reloader for windows(r) 10 and 11

set "fpath=C:\windows\temp"
set /p fpath="Enter the path to put the temporary file (default is %fpath%, do not put an '\' at the end): "

title internet explorer

echo wait... data is ready but confirmation is needed.
timeout /t 1 -nobreak > nul

echo is this correct?
echo path :  %fpath%
echo press any key to open IE11

pause > nul

echo file writing started

:: Write the VBScript code to a file
echo Set objIE = CreateObject("InternetExplorer.Application") > "%fpath%\random_window.vbs"
echo objIE.Visible = True >> "%fpath%\random_window.vbs"
echo objIE.ToolBar = True >> "%fpath%\random_window.vbs"
echo objIE.StatusBar = True >> "%fpath%\random_window.vbs"
echo objIE.MenuBar = True >> "%fpath%\random_window.vbs"
echo objIE.Resizable = True >> "%fpath%\random_window.vbs"
echo objIE.Navigate "https://www.google.com/" >> "%fpath%\random_window.vbs"
echo objShell.AppActivate objIE >> "%fpath%\random_window.vbs"

echo opening IE11...

:: Run the VBScript with the random color
start cmd /c start cscript //nologo "%fpath%\random_window.vbs" %rand_color%

cls

cls

cls

cls

echo ie11 reloader for windows(r) 10 and 11

echo ie11 was opened.
echo press any key when ready to clean up.
pause > nul

echo cleaning up...

del "%fpath%\random_window.vbs"

cls

echo closing the terminal...

ping 0.0.0.0 > nul

:loop
exit
goto loop
