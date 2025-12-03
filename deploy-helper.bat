@echo off
REM Script helper para Windows - Deploy do Biblivre-5
REM Execute este script para preparar o projeto para deploy

echo.
echo ========================================
echo   Biblivre-5 - Preparacao para Deploy
echo ========================================
echo.

REM Verificar se git esta instalado
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERRO] Git nao encontrado. Instale o Git primeiro.
    echo.
    echo Baixe em: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git encontrado
echo.

REM Verificar status do repositorio
echo Verificando status do repositorio...
git status --short
echo.

REM Perguntar se deseja continuar
set /p CONTINUAR="Deseja adicionar todos os arquivos e fazer commit? (S/N): "
if /i not "%CONTINUAR%"=="S" (
    echo.
    echo Operacao cancelada.
    pause
    exit /b 0
)

echo.
echo Adicionando arquivos...
git add .

echo.
echo Fazendo commit...
git commit -m "Add cloud deployment configuration (Supabase + Render)"

echo.
echo Fazendo push...
git push origin master

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo   Commit e Push realizados com sucesso!
    echo ========================================
    echo.
    echo Proximos passos:
    echo.
    echo 1. Configure o Supabase:
    echo    - Acesse: https://supabase.com
    echo    - Crie um projeto
    echo    - Execute os scripts SQL
    echo.
    echo 2. Configure o Render:
    echo    - Acesse: https://render.com
    echo    - Crie um Web Service
    echo    - Conecte seu repositorio
    echo    - Configure as variaveis de ambiente
    echo.
    echo 3. Consulte os guias:
    echo    - QUICKSTART.md - Guia rapido
    echo    - DEPLOY.md - Guia completo
    echo.
) else (
    echo.
    echo [ERRO] Falha no push. Verifique os erros acima.
)

echo.
pause
