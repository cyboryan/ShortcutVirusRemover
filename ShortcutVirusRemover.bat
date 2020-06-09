@echo off

color a
::SET EXACT VERSION
SET ver=1.2.0
::SET DEVELOPER
SET dev=cyboryan
SET title=Shortcut Virus Remover
TITLE %title% %ver%

:: Program startup
:startup
cls
color a                          
echo  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo  "         ____   _   _   _____   ____   ______  ____  _   _   ______         "
echo  "         |      |   ||  /   \\  |  ||    ||    |     |   ||    ||           "
echo  "         |___   |___||  |   ||  |__||    ||    |     |   ||    ||           "
echo  "            ||  |   ||  |   ||  | \\     ||    |     |   ||    ||           "
echo  "         ___||  |   ||  \___//  |  \\    ||    |___  \___//    ||           "
echo  "                                                                            "
echo  "                                                                            "
echo  " _    _ __ ____  _   _  ____     ____   ___         ____  _    _  ___ ____  "
echo  " |   || || |  || |   || |        |  || ||   |\  /|| /  \\ |   || ||   |  || "
echo  " \    / || |__|| |   || |__      |__|| ||__ | \/ || |  || \    / ||__ |__|| "
echo  "  \  /  || | \\  |   ||    ||    | \\  ||   |    || |  ||  \  /  ||   | \\  "
echo  "   \/   || |  \\ \___// ___||    |  \\ ||__ |    || \__//   \/   ||__ |  \\ "
echo  "                                                                           "
echo  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo. 
echo.
echo.	            Created by %dev% - Version %ver%
echo. 
echo. 
echo This program is to remove shortcut virus in your External Devices.
echo Recommended to use for infected External Devices.
TIMEOUT /T 5 /NOBREAK
goto mainPage

:mainPage
cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
echo Type drive letter to recover. Type "exit" to close application.
echo More information about this program can be seen by typing "about".
echo. 
SET command=
SET /P command= Command: 

IF EXIST %command%:\ ( goto removeVirus )
IF "%command%"=="exit" ( goto exit )
IF "%command%"=="EXIT" ( goto exit )
IF "%command%"=="about" ( goto about )
IF "%command%"=="ABOUT" ( goto about )

:: if invalid input
cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
echo Incorrect input / Drive unavailable
echo. 
TIMEOUT /T 5
goto mainPage

:removeVirus
cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
ECHO.Removing Virus at Drive %command%:\. Please wait.
attrib -h -s -r -a /s /d %command%:*.*

cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
start %command%:\
ECHO.Recovery Complete ... We opened the selected drive for you to check ...
ECHO.
echo *** IMPORTANT ***
echo 1. Check your Flash drive for unknown files and folders.
echo    If there are any, delete them ...
echo 2. You can get access to your files again through a (blank) name folder.
echo. 
echo NOTE: 
echo If it didn't work, the shortcut virus doesn't exist in the selected drive.
echo Else, it's a different virus attacking your USB or there's nothing at all :P
echo. 
pause
goto mainPage

:about
cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
echo %dev%'s Shortcut Virus Remover is a remake of Eranda's Shortcut Virus Remover 
echo Version with added features ...
echo - Select drive letter by typing it,
echo - Automatically open selected drive after recovery,
echo - and more features to come if deemed necessary.
echo. 
echo Startup Text credits to Eranda.
echo https://www.ShortcutVirusRemover.com
echo. 
echo Dev Social Accounts:
echo Facebook: @officialCyboryan
echo Twitter/Instagram/GitHub: @cyboryan
echo Official Website: https://cyboryan.github.io
echo.
echo File issues if you found any on this program at
echo https://www.github.com/cyboryan/ShortcutVirusRemover
echo. 
echo. 
pause
goto mainPage


:exit
cls
echo %title% %ver%
echo Created by %dev%
echo ===============================================================================
echo Closing application ...
echo. 
echo. 
echo. 
exit
