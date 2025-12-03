@echo off
REM Script Windows para verificar banco Supabase

echo ==================================
echo Verificacao do Banco Supabase
echo ==================================
echo.

SET HOST=db.uqfvicgelyxmikqaiong.supabase.co
SET PORT=5432
SET DB=postgres
SET USER=postgres
SET PASS=OgirdoR!198500

echo Testando conexao...
echo.

REM Testar se psql está instalado
where psql >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo AVISO: psql nao encontrado no PATH
    echo.
    echo Para instalar PostgreSQL no Windows:
    echo   1. Baixe de: https://www.postgresql.org/download/windows/
    echo   2. Instale apenas o cliente psql
    echo   3. Adicione ao PATH: C:\Program Files\PostgreSQL\16\bin
    echo.
    echo Ou use o SQL Editor do Supabase para executar esta query:
    echo.
    echo SELECT COUNT^(*^) FROM information_schema.tables 
    echo WHERE table_schema = 'global';
    echo.
    echo Resultado esperado: 55
    echo.
    pause
    exit /b 1
)

echo Conectando ao Supabase...
SET PGPASSWORD=%PASS%
psql -h %HOST% -p %PORT% -U %USER% -d %DB% -c "SELECT COUNT(*) as total_tabelas FROM information_schema.tables WHERE table_schema = 'global';"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Falha na conexao!
    echo Verifique as credenciais e se o Supabase esta online.
    pause
    exit /b 1
)

echo.
echo ==================================
echo Verificacao concluida!
echo ==================================
echo.
echo Se o resultado foi 55, o banco esta pronto!
echo Caso contrario, execute os arquivos SQL.
echo.
pause
