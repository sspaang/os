@echo off

setlocal enableextensions enabledelayedexpansion

set dirPath=C:\Users\K_Olion\Desktop\Batch File Script\Delete333

pushd !dirPath!

:: Loop through all files in this directory 
for %%a in (*) do (
    set fileName=%%a
    if "!fileName!"=="zxc.txt" (
        echo Protected: !fileName!
    ) else (
        del /p !fileName!
    )
)

:: Loop through all sub directories in this directory
for /d %%a in (*) do (
    set dirName=%%a
    echo Directory: !dirName!
)

pause