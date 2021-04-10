@echo off
SETLOCAL EnableDelayedExpansion
cls
echo.
echo  ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                   บ
echo  บ        _________Red Dead Deletion_________        บ
echo  บ            -= v1.0 by: Ted Thompson =-            บ
echo  บ                        2021                       บ
echo  บ                                                   บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
choice /m "->Delete the game cache" 
echo.
REM If YES
if %ERRORLEVEL% EQU 1 (
	echo  Deleting cache files
	echo.
	REM Grab the users "My Documents" location from the registry (Key named "Personal" for whatever reason...)
	for /f "tokens=2*" %%x in ('reg query "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal"') do (set "pf_path=%%y")
	if exist !pf_path!"\Rockstar Games\Red Dead Redemption 2\Settings\sga_*.*" (
		del !pf_path!"\Rockstar Games\Red Dead Redemption 2\Settings\sga_*.*"
	) else (
		echo -^>None found ??
	)
)

REM If NO
if %ERRORLEVEL% EQU 2 (
	echo  Cache files retained
)
REM Start game, and delay so we have time to read anything output to screen.
echo.
echo  Launching RDO...
"Red Dead Redemption 2.url"
timeout /T 10 > NUL