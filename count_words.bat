@echo off
setlocal enabledelayedexpansion

REM Check if the script was called with a file name
if "%~1"=="" (
    echo Please provide a LaTeX file name.
    goto :eof
)

REM Set the path to your LaTeX file
set TEX_FILE=%~1


REM Debug: Show the path being used for the LaTeX file
echo Checking file: %TEX_FILE%

REM Check if the LaTeX file exists
if not exist "%TEX_FILE%" (
    echo ERROR: File not found or not readable: %TEX_FILE%
    goto :eof
)


REM Count words and find specific words
texcount "%TEX_FILE%" -inc -total -brief -freq | findstr /G:"%~dp0\avoid_words.txt" /L

echo Done.
endlocal
