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
if %input% == 4 (goto Exit else) else (goto whileCorrectNum)
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
:: หลักการทำงาน
:: นำไฟล์นี้ไปวางข้างนอกโฟล์เดอร์ย่อย
:: หลังทำงานจะดึงไฟล์ที่อยู่ในโฟล์เดอร์ย่อยทั้งหมดออกมาที่เดียวกับไฟล์นี้
set parFolder="%cd%"
FOR /r %parFolder% %%d in (*.*) do move "%%d" %parFolder% 
ECHO Done
goto whileCorrectNum
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu03
cls
color 02
echo ===================== Menu 3 =====================
echo          Welcome to Guess Number Until dawn!!
echo ==================================================
set /a rand=%random% %%100 +1
:whileLoop
set /p input=Guess a Number: 
set /a Evaluated=%input%
if %Evaluated% neq %input% (goto whileLoop)
if %input% lss %rand% (
	echo 				Greater than that
	goto whileLoop
)
if %input% gtr %rand% (
	echo 				lesser than that
	goto whileLoop
) else (
echo.
echo 		    Correct!!!!)
goto whileCorrectNum
