# SCRIPT DE CONFIGURACAO AUTOMATICA DO BANCO DE DADOS BIBLIVRE
# Execute como Administrador: Clique com botao direito e "Executar como Administrador"

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  CONFIGURACAO AUTOMATICA DO BANCO DE DADOS" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$PGBIN = "C:\Program Files\PostgreSQL\18\bin"
$PGDATA = "C:\Program Files\PostgreSQL\18\data"
$PGHBA = "$PGDATA\pg_hba.conf"

# Verificar se esta rodando como Administrador
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "ERRO: Este script precisa ser executado como Administrador!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Clique com botao direito no arquivo e selecione:" -ForegroundColor Yellow
    Write-Host "  'Executar com PowerShell como Administrador'" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Ou execute este comando no PowerShell (Admin):" -ForegroundColor Yellow
    Write-Host "  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; .\setup-database-simples.ps1" -ForegroundColor Cyan
    Write-Host ""
    Pause
    exit 1
}

try {
    Write-Host "[1/6] Fazendo backup da configuracao atual..." -ForegroundColor Green
    if (Test-Path $PGHBA) {
        Copy-Item $PGHBA "$PGHBA.backup" -Force
        Write-Host "  Backup salvo em: $PGHBA.backup" -ForegroundColor Gray
    }

    Write-Host "[2/6] Configurando autenticacao trust (apenas localhost)..." -ForegroundColor Green
    $config = @"
# Configuracao temporaria para desenvolvimento local - Biblivre
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             all                                     trust
host    all             all             127.0.0.1/32            trust
host    all             all             ::1/128                 trust
"@
    Set-Content -Path $PGHBA -Value $config -Force
    Write-Host "  Autenticacao configurada sem senha para localhost" -ForegroundColor Gray

    Write-Host "[3/6] Reiniciando PostgreSQL..." -ForegroundColor Green
    Restart-Service postgresql-x64-18 -Force
    Start-Sleep -Seconds 5
    Write-Host "  PostgreSQL reiniciado com sucesso" -ForegroundColor Gray

    Write-Host "[4/6] Criando usuario 'biblivre'..." -ForegroundColor Green
    & "$PGBIN\createuser.exe" -U postgres -s -d -r -l biblivre 2>$null
    & "$PGBIN\psql.exe" -U postgres -c "ALTER USER biblivre PASSWORD 'abracadabra';" 2>$null
    Write-Host "  Usuario 'biblivre' criado (senha: abracadabra)" -ForegroundColor Gray

    Write-Host "[5/6] Criando banco de dados 'biblivre4'..." -ForegroundColor Green
    & "$PGBIN\createdb.exe" -U postgres -O biblivre -E UTF8 biblivre4 2>$null
    Write-Host "  Banco 'biblivre4' criado" -ForegroundColor Gray

    Write-Host "[6/6] Importando estrutura e dados..." -ForegroundColor Green
    Write-Host "  Aguarde, isso pode levar alguns minutos..." -ForegroundColor Yellow
    & "$PGBIN\psql.exe" -U biblivre -d biblivre4 -f "sql\biblivre4.sql" -q
    
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Green
    Write-Host "  CONFIGURACAO CONCLUIDA COM SUCESSO!" -ForegroundColor Green
    Write-Host "================================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Credenciais do banco de dados:" -ForegroundColor Cyan
    Write-Host "  Host: localhost" -ForegroundColor White
    Write-Host "  Porta: 5432" -ForegroundColor White
    Write-Host "  Banco: biblivre4" -ForegroundColor White
    Write-Host "  Usuario: biblivre" -ForegroundColor White
    Write-Host "  Senha: abracadabra" -ForegroundColor White
    Write-Host ""
    Write-Host "Proximo passo: Execute 'mvn tomcat7:run' para iniciar a aplicacao" -ForegroundColor Yellow
    Write-Host ""
    
} catch {
    Write-Host ""
    Write-Host "ERRO: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host ""
}

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "IMPORTANTE - SEGURANCA:" -ForegroundColor Yellow
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "A configuracao 'trust' permite acesso sem senha apenas para" -ForegroundColor Yellow
Write-Host "conexoes locais (localhost). Isso e seguro para desenvolvimento." -ForegroundColor Yellow
Write-Host ""
Write-Host "Para restaurar a configuracao original:" -ForegroundColor White
Write-Host "  1. Copie: $PGHBA.backup" -ForegroundColor Gray
Write-Host "  2. Para: $PGHBA" -ForegroundColor Gray
Write-Host "  3. Reinicie: Restart-Service postgresql-x64-18" -ForegroundColor Gray
Write-Host ""

Pause
