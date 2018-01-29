@echo off
title Uninstall Spectre/Meltdown Update
goto foreward
:foreward
color 0b
cls
echo This batch is a batch file made by Kody Salak with help of the creator of the
echo "win10fix_full.bat", and @BatchProgramming on YouTube.
echo The other names in the programs above made some of the menus and scripting.
echo.
echo This will uninstall KB4056891, which is the update to AMD machines that almost killed the OS.
echo This is a VERY simple file, and if you think there is some sort of malicous code, take a look for yourself.
echo IF this ends up on the internet, I AM NOT RESPONSIBLE IF THE USER OF THIS BREAKS THEIR MACHINE.
echo.
echo If you understand the above, and accept - press any key to continue...
pause > NUL
goto elevatecheck
:elevatecheck
color 0c
cls
echo Checking for Administrator elevation...
echo.
echo.
openfiles > NUL 2>&1
if %errorlevel%==0 (
	echo Elevation found! Proceeding...
) else (
	echo You are not an Administrator...
	echo.
	echo You need to run this batch as an Administrator!
	echo.
	echo Right-click and select ^'Run as Administrator^' and try again...
	echo.
	echo Press any key to exit...
	pause > NUL
	exit
)
goto restartwarning
:restartwarning
color 0d
cls
echo THIS WILL RESTART YOUR COMPUTER WHEN YOU ARE COMPLETE. THIS RESTART IS REQUIRED. 
echo PLEASE SAVE AND CLOSE ANY OPEN PROGRAMS OR DOCUMENTS!
echo WHEN YOU ARE READY TO CONTINUE, PLEASE PRESS ANY KEY.
pause > NUL
goto menu
:menu
color 8f
cls
echo Main Menu
echo.
echo.
echo 1^) Run the uninstall program.
echo 2^) Exit.
echo.
echo.
set /p mmchoice=SELECTION: 
if %mmchoice%==1 goto program
if %mmchoice%==2 goto quitprogram
:program
@echo.
@echo.
:choice
set /P c=This will uninstall the Spectre/Meltdown update for AMD (KB4056891). Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :uninstall
if /I "%c%" EQU "N" goto :quitprogram
goto :choice

:uninstall
@echo This will uninstall KB4056891. Please be patient. After the program is complete, It will promt a restart. 
pause
dism.exe /online /Remove-Package /PackageName:Package_for_RollupFix~31bf3856ad364e35~amd64~~15063.850.1.10 /quiet /norestart > NUL
if /I %ERRORLEVEL% EQU 0 (
pause
	goto progress
) else (
	echo There was an error with the program.
	echo.
	echo Please restart and try again.
	echo.
	echo Try the systeminfo command and see if the update (KB4056891) is under "hotfixes"
	echo.
	echo Press any key to make this dissapear. 
	pause > NUL
	exit
:quitprogram
@echo.
@echo.
@echo You chose to cancel the uninstaller. This screen will go away after pressing any key. 
pause > NUL
exit
:progress
echo.
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =                     1%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =                     3%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =                     5%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ==                   10%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ===                  15%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ====                 20%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =====                25%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ======               30%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =======              35%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ========             40%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =========            45%%
echo   ----------------------------------
ping -n 2 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ==========           50%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ===========          55%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ============         60%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =============        65%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ==============       70%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ===============      80%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ================     85%%
echo   ----------------------------------
ping -n 4 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: =================    90%%
echo   ----------------------------------
ping -n 5 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ===================  95%%
echo   ----------------------------------
ping -n 6 localhost > NUL
cls
echo.
echo.
echo   Program is running, please wait...
echo   ----------------------------------
echo   Progress: ==================== 100%%
echo   ----------------------------------
GOTO END
:END
cls
echo.
echo.
echo   Completed!
echo   ----------------------------------
echo   Progress: ==================== 100%%
echo   ----------------------------------
echo.
echo.
shutdown /r /t 60 /c "Your computer will restart in one minute to finish the task. Please save any open work." /d up:2:17
@echo Success! The program has completed. Please wait for your machine to restart. Press any key to make this disappear.
pause > NUL