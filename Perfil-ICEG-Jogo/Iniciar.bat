@echo off
title Perfil ICEG
cd /d "%~dp0"

where node >nul 2>&1
if errorlevel 1 (
    echo.
    echo  ERRO: Node.js nao encontrado.
    echo  Baixe e instale em: https://nodejs.org
    echo.
    pause
    exit /b 1
)

echo.
echo  Iniciando Perfil ICEG...
echo  O jogo abrira automaticamente no navegador em alguns segundos.
echo  Para encerrar, feche esta janela.
echo.

start "" cmd /c "timeout /t 3 /nobreak >nul && start http://127.0.0.1:5174"
node server.js
pause
