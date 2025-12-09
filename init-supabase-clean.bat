@echo off
echo ===================================================
echo     Inicializacao COMPLETA do Banco Supabase
echo ===================================================
echo.

javac -cp "%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB.java

if %ERRORLEVEL% neq 0 (
    echo Erro na compilacao!
    exit /b 1
)

echo [0/5] Limpando banco de dados...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\0_limpar_completo.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao limpar banco!
    exit /b 1
)

echo.
echo [1/5] Criando estrutura do banco...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\01_estrutura_final.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao criar estrutura!
    exit /b 1
)

echo.
echo [2/5] Inserindo dados parte 1...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\02_dados_final_parte1.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao inserir dados parte 1!
    exit /b 1
)

echo.
echo [3/5] Inserindo dados parte 2...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\03_dados_final_parte2.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao inserir dados parte 2!
    exit /b 1
)

echo.
echo [4/5] Inserindo dados parte 3...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\04_dados_final_parte3.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao inserir dados parte 3!
    exit /b 1
)

echo.
echo [5/5] Inserindo configuracoes finais...
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" SimpleInitDB sql\split\05_configs_final.sql

if %ERRORLEVEL% neq 0 (
    echo Erro ao inserir configuracoes!
    exit /b 1
)

echo.
echo ===================================================
echo     SUCESSO! Banco inicializado completamente
echo ===================================================
echo.
echo Verificando tabelas criadas...
echo.

java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" VerifyBiblivreTables

echo.
pause
