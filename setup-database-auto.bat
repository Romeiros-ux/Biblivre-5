@echo off
echo ================================================
echo   CONFIGURACAO AUTOMATICA DO BANCO DE DADOS
echo   (Metodo alternativo - sem precisar de senha)
echo ================================================
echo.

set PGDATA="C:\Program Files\PostgreSQL\18\data"
set PGCONF=%PGDATA%\pg_hba.conf
set PGCONF_BAK=%PGDATA%\pg_hba.conf.backup

echo [1/5] Fazendo backup da configuracao atual...
copy %PGCONF% %PGCONF_BAK%

echo [2/5] Configurando autenticacao trust para localhost...
echo # Configuracao temporaria para desenvolvimento local > %PGCONF%.new
echo # TYPE  DATABASE        USER            ADDRESS                 METHOD >> %PGCONF%.new
echo host    all             all             127.0.0.1/32            trust >> %PGCONF%.new
echo host    all             all             ::1/128                 trust >> %PGCONF%.new
echo local   all             all                                     trust >> %PGCONF%.new

move /Y %PGCONF%.new %PGCONF%

echo [3/5] Reiniciando PostgreSQL...
net stop postgresql-x64-18
timeout /t 3 /nobreak > nul
net start postgresql-x64-18
timeout /t 5 /nobreak > nul

echo [4/5] Criando usuario e banco de dados...
"C:\Program Files\PostgreSQL\18\bin\createuser.exe" -U postgres -s -d -r -l biblivre 2>nul
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -c "ALTER USER biblivre PASSWORD 'abracadabra';" 2>nul
"C:\Program Files\PostgreSQL\18\bin\createdb.exe" -U postgres -O biblivre biblivre4 2>nul

echo [5/5] Importando estrutura do banco...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U biblivre -d biblivre4 -f sql\biblivre4.sql

echo.
echo ================================================
echo   CONFIGURACAO CONCLUIDA!
echo ================================================
echo.
echo Para restaurar configuracao original (mais segura):
echo   1. Pare o PostgreSQL: net stop postgresql-x64-18
echo   2. Restaure o backup: copy %PGCONF_BAK% %PGCONF%
echo   3. Inicie o PostgreSQL: net start postgresql-x64-18
echo.
pause
