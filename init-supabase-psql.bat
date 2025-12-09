@echo off
setlocal enabledelayedexpansion

echo ====================================================
echo    Inicializacao do Banco de Dados Supabase
echo ====================================================
echo.

set PGPASSWORD=OgirdoR!198500
set DB_HOST=aws-0-us-west-2.pooler.supabase.com
set DB_PORT=5432
set DB_NAME=postgres
set DB_USER=postgres.ouobsvpkwqbzeeapcpgw

echo Verificando psql...
where psql >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERRO] psql nao encontrado!
    echo.
    echo Por favor, instale o PostgreSQL Client:
    echo https://www.postgresql.org/download/windows/
    echo.
    echo Ou adicione o PostgreSQL bin ao PATH do sistema.
    pause
    exit /b 1
)

echo psql encontrado!
echo.

set FILES[0]=sql\split\01_estrutura_completo.sql
set FILES[1]=sql\split\02_dados_final_parte1.sql
set FILES[2]=sql\split\03_dados_final_parte2.sql
set FILES[3]=sql\split\04_dados_final_parte3.sql
set FILES[4]=sql\split\05_configs_final.sql

echo Conectando ao Supabase...
echo Host: %DB_HOST%
echo Database: %DB_NAME%
echo User: %DB_USER%
echo.

for /L %%i in (0,1,4) do (
    echo [%%i/4] Executando: !FILES[%%i]!
    echo.
    
    psql "postgresql://%DB_USER%:%PGPASSWORD%@%DB_HOST%:%DB_PORT%/%DB_NAME%?sslmode=require" -f "!FILES[%%i]!"
    
    if !ERRORLEVEL! neq 0 (
        echo.
        echo [ERRO] Falha ao executar !FILES[%%i]!
        echo.
        pause
        exit /b 1
    )
    
    echo.
    echo [OK] Concluido com sucesso!
    echo.
    timeout /t 2 /nobreak >nul
)

echo.
echo ====================================================
echo    Verificando estrutura do banco...
echo ====================================================
echo.

echo SELECT COUNT(*) as total_tabelas FROM information_schema.tables WHERE table_schema = 'global'; | psql "postgresql://%DB_USER%:%PGPASSWORD%@%DB_HOST%:%DB_PORT%/%DB_NAME%?sslmode=require" -t

echo.
echo ====================================================
echo    PROCESSO CONCLUIDO COM SUCESSO!
echo ====================================================
pause
