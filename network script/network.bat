@echo off
REM *****************************************************************
REM Programador....:Leandro
REM Data...........:17/10/2024
REM******************************************************************
:MENU
cls
echo ################################
echo NETWORK SCRIPT                 #
echo # (C) 2024 . Leandro           #
echo ################################

echo  1 - IP configurations
echo  2 - Renew IP configurations
echo  3 - DNS query
echo  4 - Show Mac Adress
echo  5 - Show power efficiency
echo  6 - File/App Association in output.txt
echo  7 - Check Disk
echo  8 - Check url connection
echo  9 - SHow computer users in user.txt
echo 10 - Exit

set /p opt="Select an option then press ENTER: "

if %opt% == 1 goto IP_CONFIGURATIONS
if %opt% == 2 goto RENEW_IP_CONFIGURATIONS
if %opt% == 3 goto DNS_QUERY
if %opt% == 4 goto MAC_ADRESS
if %opt% == 5 goto POWER_EFFICIENT
if %opt% == 6 goto FILE_APP_ASSOC
if %opt% == 7 goto CHECK_DISC
if %opt% == 8 goto QR_CODE
if %opt% == 9 goto USERS_PROFILE
if %opt% == 10 goto EXIT_SCRIPT

:IP_CONFIGURATIONS
ipconfig /all
pause
goto MENU

:RENEW_IP_CONFIGURATIONS
ipconfig /release
pause
ipconfig /renew
pause
goto MENU

:DNS_QUERY
set /p domain="Insert domain: "
set /p dnsserver="Insert dns server: "
nslookup %domain% %dnsserver%
pause
goto MENU

:MAC_ADRESS
getmac 
pause
goto MENU

:POWER_EFFICIENT
powercfg /energy
pause
goto MENU

:FILE_APP_ASSOC
assoc > output.txt
pause
goto MENU

:CHECK_DISC
chkdsk /f /r
pause
goto MENU

:QR_CODE
set /p url="Insert URL"
ping %url%
pause
goto MENU

:USERS_PROFILE
net user > users.txt
pause
goto MENU
:EXIT_SCRIPT
cls
echo Thanks
cmd /k
