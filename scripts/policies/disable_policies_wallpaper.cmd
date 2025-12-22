@echo off

net session >nul 2>&1 || (
    echo ERRO: Execute este script como Administrador.
    pause
    exit /b 1
)

@echo on

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /f

rem pause