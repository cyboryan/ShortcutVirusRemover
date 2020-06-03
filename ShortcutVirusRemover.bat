@echo off

color a
SET beta=0
::SET PROGRAM BUILD
SET build=48
::SET EXACT VERSION
SET ver=1.1.0
::SET VERSION TO BE BUILT
SET vertobe=1.1.0
SET dev=CyboryaN-
TITLE XYPOWER Shortcut Virus Remover %ver%

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
echo XYPOWER Shortcut Virus Remover %ver%
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
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
ECHO.Removing Virus at Drive %command%:\ - 33 percent
attrib -h -s -r -a /s /d %command%:*.*
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
ECHO.Removing Virus at Drive %command%:\ - 67 percent
attrib -h -s -r -a /s /d %command%:*.*
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
ECHO.Removing Virus at Drive %command%:\ - 90 percent
attrib -h -s -r -a /s /d %command%:*.*
goto recoverycomplete

:: THIS FEATURE WILL BE SKIPPED FOR NOW <UNDER TESTING>

cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Will you wish to format your device to ensure there will be no virus
echo in your device? Don't worry your files will be backupped before the process.
SET backupcf=
SET /P backupcf= Y/N ? : 

IF "%backupcf%"="Y" (
 GOTO backupbeta
) ELSE (
 IF "%backupcf%"="N" (
  GOTO recoverycomplete
 ) ELSE (
  IF "%backupcf%"="y" (
   GOTO backupbeta
  ) ELSE (
   IF "%backupcf%"="n" (
    GOTO recoverycomplete
   ) ELSE (   
    GOTO wronginputb
   )
  )
 )
)

:backupbeta
:: NEW FEATURE VERSION 1.2
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo BACKUPPING FILES ...
echo Select drive letter to backup files ...
SET backuplt=
SET /P backuplt=Drive Letter : 

IF "%command%"="%backuplt%" (
 GOTO errorbackupbeta
) ELSE (
 IF EXIST %backuplt%:\ (
  GOTO backupoperation
 ) ELSE (
  GOTO errorbackupbetaa
 )
)

:errorbackupbetaa
:: NEW FEATURE VERSION 1.2
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo BACKUP ERROR!
echo Incorrect input / Drive unavailable
echo.
pause
goto backupbeta


:errorbackupbeta
:: NEW FEATURE VERSION 1.2
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo BACKUP ERROR!
echo The drive letter you selected is the same as the drive letter you chose earlier.
echo Please choose different drive ...
echo.
pause
goto backupbeta

:backupoperation
:: NEW FEATURE VERSION 1.2
:: NOT DONE WITH THIS CODE YET
:: REFERRENCE
:: https://ss64.com/nt/ COMMANDS: MD/IF/COPY

::backupcf BACKUP Confirmation
::backuplt Where files will be backupped
::backupdt BACKUP Directory

cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo BACKUPPING YOUR FILES ...
MD %backuplt%:\Files From %command%
SET backupdt=%backuplt%:\Files From %command%
ROBOCOPY %command%:\ %backuplt%:\Files From %command%
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo FORMATTING DEVICE ...
echo Name the volume of the device ...
SET volumefm=
SET /P volumefm= Volume Name : 

echo Caution: Please recheck if all of the files were moved. Proceed if done.
pause
FORMAT %command%:\ /FS:FAT32 /V:%volumefm% /Q /X
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo COPYING FILES BACK TO DEVICE ...
ROBOCOPY %backupdt% %command%
goto recoverycomplete

:: NOT DONE 

:: OLD CODE #removevirus PART

:recoverycomplete
cls
echo XYPOWER Shortcut Virus Remover %ver%
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
echo XYPOWER Shortcut Virus Remover %ver% Build %build%
echo Created by %dev%
echo ===============================================================================
echo XYPOWER Shortcut Virus Remover is a remake of Eranda's Shortcut Virus Remover 
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
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Incorrect input / Drive unavailable
echo. 
pause
goto startbeta

:exit
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo Created by %dev%
echo ===============================================================================
echo Closing application ...
echo. 
echo. 
echo. 
exit

::NEW DEVELOPER MODE
:devmodeintro
cls
color 1b
echo XYPOWER Shortcut Virus Remover %ver%
echo DEVELOPER TEST MODE!
echo ===============================================================================
SET passcode=
SET /P passcode= Passcode : 

IF "%passcode%"=="eaminehczednanref" (
 GOTO testmode
) ELSE (
 GOTO exit
)

:testmode
cls
echo XYPOWER Shortcut Virus Remover %ver%
echo DEVELOPER TEST MODE!
echo ===============================================================================
echo Type Drive Letter to begin ...
SET command=
SET /P command= Drive Letter : 

IF EXIST %command%:\ (
 GOTO testmodeb
) ELSE (
 GOTO testmodeerror
)

:testmodeb
echo Select Backup Letter
SET backuplt=
SET /p backuplt= Drive Letter : 

IF "%command%"=="%backuplt%" (
 GOTO testmodeerror
) ELSE (
 IF EXIST %backuplt%:\ (
  GOTO testoperation
 ) ELSE (
  GOTO testmodeerror
 )
)

:testoperation
MD %backuplt%:\Files From %command%
SET backupdt=%backuplt%:\Files From %command%
ROBOCOPY %command%:\ %backuplt%:\Files From %command%
goto testcomplete

:testmodeerror
ECHO.
echo TEST MODE ERROR ...
pause
goto testmode

:testcomplete
ECHO.
echo Test Complete
echo Program will exit ...
pause
exit