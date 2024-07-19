@echo off
title CrowdFix by eramic@hotmail.com
:: BY: www.linkedin.com/in/eramic
color 0A
echo =============================================
echo           Welcome to CrowdFix
echo for those affected by Crowdstrike Falcon Senzor Update problem
echo          this is not official fix
echo =============================================
echo.
timeout /t 3 /nobreak >nul
cd %windir%\System32\drivers\Crowdstrike
del /f /q C-00000291*.sys
shutdown /r /t 1
