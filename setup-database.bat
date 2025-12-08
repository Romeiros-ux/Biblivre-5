@echo off
echo ================================================
echo   SETUP DO BANCO DE DADOS BIBLIVRE
echo ================================================
echo.
echo Este script ira:
echo 1. Criar o usuario e banco de dados biblivre4
echo 2. Importar a estrutura e dados iniciais
echo.
echo IMPORTANTE: Tenha a senha do usuario postgres em maos
echo.
pause

set PSQL="C:\Program Files\PostgreSQL\18\bin\psql.exe"

echo.
echo [1/2] Criando banco de dados biblivre4...
%PSQL% -U postgres -f sql\createdatabase.sql

if errorlevel 1 (
    echo ERRO: Falha ao criar banco de dados
    pause
    exit /b 1
)

echo.
echo [2/2] Importando estrutura e dados...
%PSQL% -U postgres -f sql\biblivre4.sql -d biblivre4

if errorlevel 1 (
    echo ERRO: Falha ao importar dados
    pause
    exit /b 1
)

echo.
echo ================================================
echo   SETUP CONCLUIDO COM SUCESSO!
echo ================================================
echo.
echo Banco de dados: biblivre4
echo Usuario: biblivre
echo Senha: abracadabra
echo.
pause
