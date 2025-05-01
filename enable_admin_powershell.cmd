echo off

echo Habilitando modo admin no PowerShell...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0%~n0.ps1""' -Verb RunAs -Wait -WindowStyle maximized}"

echo Execucao finalizada!

pause