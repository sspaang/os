@echo off
title Assignment01: Even group
goto Menu01
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:: Global Function Area
:whileCorrectNum
echo Press 1 to go menu 1 : Display Date BE and BC
echo Press 2 to go menu 2 : Move all files in any subfolder to parentfolder
echo Press 3 to go menu 3 : Guessing Number Until Dawn
echo Press 4 to exit
set /p input=Select Menu:
if %input% == 1 goto Menu01
if %input% == 2 goto Menu02
if %input% == 3 goto Menu03
if %input% == 4 (goto Exit else) else (goto whileCorrectNum)
:Exit
echo Closing...
timeout /t 3 /NOBREAK
exit
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu01
cls
echo Menu:01
echo =========
:: Tranform BC to BE
:: โค๊ดนี้เรียก date format แบบ dd-Jul-yy
set /a year = %date:~7,2% + 2000
set /a BCtoBE = %year% + 543
set /a shortBE =%BCtoBE% %% 100
:: Display date
echo %date%
echo %date:~0,7%%shortBE%
echo =========
goto whileCorrectNum
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:Menu02
cls
echo Menu:02
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
echo Menu:03
set /a rand=%random% %%100 +1
:whileLoop
set /p input=Guess a Number: 
set /a Evaluated=%input%
if %Evaluated% neq %input% (goto whileLoop)
if %input% lss %rand% (
	echo Greater than that
	goto whileLoop
)
if %input% gtr %rand% (
	echo lesser than that
	goto whileLoop
) else (echo Correct)
echo =====================
goto whileCorrectNum
::>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
