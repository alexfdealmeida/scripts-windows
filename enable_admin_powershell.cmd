echo off

echo Habilitando modo admin no PowerShell...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0\admin-powershell.ps1""' -Verb RunAs -Wait}"

echo Execucao finalizada!

pause