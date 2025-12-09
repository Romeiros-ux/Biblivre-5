@echo off
echo === Compilando e Executando Inicializacao do Supabase ===
echo.

rem Compilar o arquivo Java
javac -cp "lib\*;target\classes" InitializeSupabaseDatabase.java
if %ERRORLEVEL% neq 0 (
    echo Erro na compilacao!
    pause
    exit /b 1
)

echo Compilacao OK!
echo.
echo Executando inicializacao do banco de dados...
echo ATENCAO: Este processo pode demorar varios minutos!
echo.

rem Executar o programa com driver PostgreSQL
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" InitializeSupabaseDatabase

echo.
echo === Processo Concluido ===
echo.
