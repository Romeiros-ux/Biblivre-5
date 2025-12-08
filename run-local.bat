@echo off
echo ================================================
echo   RODAR BIBLIVRE-5 LOCALMENTE
echo ================================================
echo.

REM Verifica se o WAR foi gerado
if not exist "target\Biblivre4.war" (
    echo ERRO: Arquivo WAR nao encontrado!
    echo Execute primeiro o script build.bat para compilar o projeto
    pause
    exit /b 1
)

echo Iniciando servidor Tomcat embutido...
echo.
echo A aplicacao estara disponivel em:
echo   http://localhost:8080/Biblivre4
echo.
echo Pressione Ctrl+C para parar o servidor
echo.

call mvn tomcat7:run

pause
