@echo off

color a
::SET EXACT VERSION
SET ver=1.1.0
::SET DEVELOPER
SET dev=cyboryan
TITLE Shortcut Virus Remover %ver%

::LIST OF GOTO COMMANDS
:: STARTUP, STARTBETA
:: #WRONGINPUT
:: #ABOUT
::  REMOVEVIRUS
::   EXITCONFIRMATION
::   ABOUTCONFIRMATION
:: EXIT

:startup

:: VERSION 1.2 CHANGES AT THIS PART
:: Removed 1 space at "Created by %dev%" part

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
echo.
pause
goto startbeta

:startbeta
color a
cls
echo Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Type drive letter to recover. Type "exit" to close application.
echo. 
SET command=
SET /P command= Command: 

IF EXIST %command%:\ (
 GOTO removevirus
) ELSE (
 GOTO exitconfirmation
)

:removevirus

:: VERSION 1.2 CHANGES TO THIS PART
:: start %command%:\ disabled
:: Added Backup Command Confirmation ^_^

cls
echo Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
ECHO.Removing Virus at Drive %command%:\. Please wait.
attrib -h -s -r -a /s /d %command%:*.*
goto recoverycomplete

:recoverycomplete
cls
echo Shortcut Virus Remover %ver%
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
goto startbeta

:exitconfirmation
IF "%command%"=="exit" (
 GOTO exit
) ELSE (
 GOTO aboutconfirmation
)

:aboutconfirmation
IF "%command%"=="about" (
 GOTO about
) ELSE (
 GOTO devmodeconfirmation
)

:devmodeconfirmation
IF "%command%"=="betadevelopmentcyboryan" (
 GOTO devmodeintro
) ELSE (
 GOTO wronginput
)

:about
cls
echo Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Shortcut Virus Remover is a remake of Eranda's Shortcut Virus Remover 
echo Version with added features ...
echo - Select drive letter by typing it,
echo - Automatically open selected drive after recovery,
echo - and more features to come if necessary.
echo. 
echo Startup Text credits to Eranda. Be sure to try his own version too FOR FREE!
echo www.ShortcutVirusRemover.com
echo. 
echo Program created by %dev%
echo www.facebook.com/CyboryanGamingAndTech
echo. 
echo. 
pause
goto startbeta

:wronginput
cls
echo Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Incorrect input / Drive unavailable
echo. 
pause
goto startbeta

:exit
cls
echo Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Closing application ...
echo. 
echo. 
echo. 
exit
