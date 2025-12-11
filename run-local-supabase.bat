@echo off
echo ========================================
echo   Biblivre 5 - Execução Local
echo   Conectando ao Supabase (Transaction Mode)
echo ========================================
echo.

REM Parar e remover container existente (se houver)
docker stop biblivre5-local 2>nul
docker rm biblivre5-local 2>nul

echo Iniciando container...
echo.

docker run --name biblivre5-local ^
  -p 8080:8080 ^
  -e DB_HOST=aws-0-us-west-2.pooler.supabase.com ^
  -e DB_PORT=6543 ^
  -e DB_NAME=postgres ^
  -e DB_USER=postgres.ouobsvpkwqbzeeapcpgw ^
  -e DB_PASSWORD=OgirdoR!198500 ^
  -e JAVA_OPTS="-Xmx768m -Xms256m" ^
  biblivre5:latest

echo.
echo ========================================
echo Container parado
echo ========================================
