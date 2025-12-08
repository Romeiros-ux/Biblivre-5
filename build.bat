@echo off
echo ================================================
echo   COMPILACAO DO BIBLIVRE-5
echo ================================================
echo.

echo [1/3] Baixando dependencias Maven...
call mvn dependency:resolve

if errorlevel 1 (
    echo ERRO: Falha ao baixar dependencias
    pause
    exit /b 1
)

echo.
echo [2/3] Compilando projeto...
call mvn clean package -DskipTests

if errorlevel 1 (
    echo ERRO: Falha na compilacao
    pause
    exit /b 1
)

echo.
echo ================================================
echo   COMPILACAO CONCLUIDA COM SUCESSO!
echo ================================================
echo.
echo Arquivo WAR gerado em: target\Biblivre4.war
echo.
echo Para rodar no Tomcat:
echo 1. Copie target\Biblivre4.war para a pasta webapps do Tomcat
echo 2. Ou use: mvn tomcat7:run (se Tomcat estiver configurado)
echo.
pause
