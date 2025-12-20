@echo off

net session >nul 2>&1 || (
    echo ERRO: Execute este script como Administrador.
    pause
    exit /b 1
)

@echo on
pushd "%~dp0..\reg"
regedit /s "disable_policies_system_wallpaper.reg"
popd

rem pause