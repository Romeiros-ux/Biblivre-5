#!/bin/bash
# Script para verificar se o banco Supabase está pronto para o Biblivre

echo "=================================="
echo "Verificação do Banco Supabase"
echo "=================================="
echo ""

# Configurações
HOST="db.uqfvicgelyxmikqaiong.supabase.co"
PORT="5432"
DB="postgres"
USER="postgres"
PASS="OgirdoR!198500"

export PGPASSWORD="$PASS"

echo "🔍 Testando conexão..."
if psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -c "SELECT version();" >/dev/null 2>&1; then
    echo "✅ Conexão OK"
else
    echo "❌ Falha na conexão"
    echo ""
    echo "Verifique:"
    echo "  - Host: $HOST"
    echo "  - Porta: $PORT"
    echo "  - Database: $DB"
    echo "  - Usuário: $USER"
    exit 1
fi

echo ""
echo "🔍 Verificando schema 'global'..."
TABLES=$(psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'global';" 2>/dev/null | tr -d ' ')

if [ "$TABLES" = "55" ]; then
    echo "✅ Schema correto: 55 tabelas encontradas"
else
    echo "❌ Schema incompleto: $TABLES tabelas encontradas (esperado: 55)"
    echo ""
    echo "Execute os arquivos SQL no Supabase:"
    echo "  1. sql/split/01_estrutura_final.sql"
    echo "  2. sql/split/02_dados_final_parte1.sql"
    echo "  3. sql/split/03_dados_final_parte2.sql"
    echo "  4. sql/split/04_dados_final_parte3.sql"
    exit 1
fi

echo ""
echo "🔍 Verificando funções PostgreSQL..."
FUNCTIONS=$(psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -t -c "SELECT COUNT(*) FROM pg_proc p JOIN pg_namespace n ON p.pronamespace = n.oid WHERE n.nspname = 'global' AND p.proname IN ('unlink', 'clear_record', 'clear_indexing_type', 'update_translation', 'update_user_value');" 2>/dev/null | tr -d ' ')

if [ "$FUNCTIONS" = "5" ]; then
    echo "✅ Funções corretas: 5 funções encontradas"
else
    echo "⚠️  Funções incompletas: $FUNCTIONS funções (esperado: 5)"
fi

echo ""
echo "🔍 Verificando dados iniciais..."
TRANSLATIONS=$(psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -t -c "SELECT COUNT(*) FROM global.translations;" 2>/dev/null | tr -d ' ')
LOGINS=$(psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -t -c "SELECT COUNT(*) FROM global.logins;" 2>/dev/null | tr -d ' ')
CONFIGS=$(psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -t -c "SELECT COUNT(*) FROM global.configurations;" 2>/dev/null | tr -d ' ')

echo "  - Traduções: $TRANSLATIONS (esperado: ~5000)"
echo "  - Logins: $LOGINS (esperado: 1)"
echo "  - Configurações: $CONFIGS (esperado: 14)"

if [ "$TRANSLATIONS" -gt "4000" ] && [ "$LOGINS" -ge "1" ] && [ "$CONFIGS" -ge "10" ]; then
    echo "✅ Dados carregados com sucesso"
else
    echo "❌ Dados incompletos - execute os arquivos de dados SQL"
    exit 1
fi

echo ""
echo "🔍 Verificando usuário admin..."
psql -h "$HOST" -p "$PORT" -U "$USER" -d "$DB" -c "SELECT id, login, employee FROM global.logins WHERE login = 'admin';" 2>/dev/null

echo ""
echo "=================================="
echo "✅ BANCO PRONTO PARA USO!"
echo "=================================="
echo ""
echo "Próximos passos:"
echo "  1. Aguardar deploy no Render (~10-12 min)"
echo "  2. Acessar URL do Render"
echo "  3. Login: admin / abracadabra"
echo ""
