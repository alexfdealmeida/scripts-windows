echo off

echo Limitando utilizacao do processador em 30%...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0\limitar-cpu-windows-defender.ps1""' -Verb RunAs -Wait}"

echo Execucao finalizada!

pause