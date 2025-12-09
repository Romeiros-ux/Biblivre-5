@echo off
echo ==========================================
echo   Git Commit e Push - Biblivre 5 Upgrade
echo ==========================================
echo.

REM Verificar se há mudanças
git status --short | findstr /R "." >nul
if %ERRORLEVEL% neq 0 (
    echo Nenhuma mudanca para commitar.
    pause
    exit /b 0
)

echo Mudancas detectadas:
echo.
git status --short
echo.

REM Mostrar branch atual
echo Branch atual:
git branch --show-current
echo.

REM Perguntar confirmação
set /p CONFIRM="Deseja fazer commit e push? (S/N): "
if /i not "%CONFIRM%"=="S" (
    echo Cancelado pelo usuario.
    pause
    exit /b 0
)

echo.
echo Adicionando arquivos...
git add .

echo.
echo Fazendo commit...
git commit -m "feat: upgrade Spring 6.2.3 + Java 21 + Supabase integration

- Upgraded Spring Framework from 6.0.23 to 6.2.3
- Migrated from Java 8 to Java 21
- Completed Jakarta EE migration (javax.servlet -> jakarta.servlet)
- Updated Servlet API to 6.0.0, JSP API to 3.1.0
- Upgraded Commons FileUpload to 2.0.0-M4 (Jakarta-compatible)
- Configured Supabase PostgreSQL database (55 tables, 6158 translations)
- Created Dockerfile.java21 for containerized deployment
- Fixed 63 files with @Serial annotation issues
- Build validated successfully with Maven

Database:
- Host: aws-0-us-west-2.pooler.supabase.com
- Schema: global
- Tables: 55
- Records: 6158 translations + configuration data

Ready for production deployment on Render.com, Azure, or Docker."

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERRO] Commit falhou!
    pause
    exit /b 1
)

echo.
echo Fazendo push...
git push origin HEAD

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERRO] Push falhou!
    echo Verifique sua conexao com GitHub.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo   SUCESSO! Codigo enviado para GitHub
echo ==========================================
echo.
echo Proximos passos:
echo   1. Acesse: https://dashboard.render.com
echo   2. New Web Service
echo   3. Conecte: Romeiros-ux/Biblivre-5
echo   4. Branch: %cd% | git branch --show-current
echo   5. Runtime: Docker
echo   6. Dockerfile: Dockerfile.java21
echo.
echo Consulte: DEPLOY_RAPIDO.md
echo.
pause
