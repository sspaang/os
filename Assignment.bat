@echo off
title Assignment01: Group NO.6
goto Menu01
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:: Global Function Area
:whileCorrectNum
echo ==================================================
echo Press 1 to go menu 1 : Display Date BE and BC
echo Press 2 to go menu 2 : Delete all files except one
echo Press 3 to go menu 3 : Dice Roller Until dawn
echo Press 4 to exit
set /p input=Select Menu:
if %input% == 1 goto Menu01
if %input% == 2 goto Menu02
if %input% == 3 goto Menu03
if %input% == 4 (goto Exit) else (goto whileCorrectNum)
:Exit
exit
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu01
cls
color 04
echo ===================== Menu 1 =====================
:: Tranform BC to BE
:: โค๊ดนี้เรียก date format แบบ dd-Jul-yy
set /a year = %date:~7,2% + 2000
set /a BCtoBE = %year% + 543
set /a shortBE =%BCtoBE% %% 100
:: Display date
echo 		     %date%
echo 		     %date:~0,7%%shortBE%

goto whileCorrectNum
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu02
cls
color 06
echo ===================== Menu 2 =====================
:Perm
echo.
echo Delete all files except one (if you want to)
set /p Perm=Do you want to keep any file?(y/n) : 
if %Perm% == y (goto chooseFile) 
if %Perm% == n (goto deleteAll) else (goto Perm)
:chooseFile
set /p PointFile=File name:
set /p typeFile=Type:
attrib +r %PointFile%.%typeFile%
attrib +r %~nx0
del *.*
attrib -r %PointFile%.%typeFile%
attrib -r %~nx0
goto gate
:deleteAll
attrib +r %~nx0
del *.*
attrib -r %~nx0
:gate
goto whileCorrectNum
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu03
cls
color 02
echo ===================== Menu 3 =====================
echo          Welcome to Dice Roller Until dawn!!
echo ==================================================
:inputNumber
set /p input=Your predict number(2-12):
if %input% lss 2 goto inputNumber
if %input% gtr 12 goto inputNumber 
set /a counter = 1
:whileLoop
set /a dice01=%random% %%6 +1
set /a dice02=%random% %%6 +1
set /a sumDice = %dice01%+%dice02%
echo ==================================================
echo Dice1 : %dice01%
echo Dice2 : %dice02%
echo Sum of both dice : %sumDice%
echo Your number : %input%
if %input% neq %sumDice% (
	set /a counter = counter +1
	::echo %counter%
	goto whileLoop
)
echo ==================================================
echo The time has come and so have I...
echo Counter : %counter%
goto whileCorrectNum
