@echo off
if "%~1" equ "" set /p midifile="Enter Midi File: "
if "%~1" neq "" set midifile=%~1
for %%a in ("%midifile%") do (
    set fullfile=%%~fa
    set filename=%%~dpna
)
set /a midisamples=512*8
"%~dp0fluidsynth-mini.exe" "%~dp0GeneralUserGS.sf2" "%fullfile%"
pause