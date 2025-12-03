echo off

echo Enabling WSL features...
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0%~n0.ps1""' -Verb RunAs -Wait}"

echo Execucao finalizada!

pause