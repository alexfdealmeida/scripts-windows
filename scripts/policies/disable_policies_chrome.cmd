@echo off

net session >nul 2>&1 || (
    echo ERRO: Execute este script como Administrador.
    pause
    exit /b 1
)

@echo on

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Google\Chrome\Extensions /f
reg delete HKEY_CURRENT_USER\Software\Google\Chrome\Extensions /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google /f
reg delete HKEY_CURRENT_USER\Software\Policies\Google /f

rem pause