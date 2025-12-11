-- SCRIPT DE DIAGNÓSTICO E CORREÇÃO - VERSÃO SIMPLIFICADA
-- Execute este script no Supabase SQL Editor

-- 1. VER ESTRUTURA DA TABELA SCHEMAS
SELECT 'Estrutura da tabela schemas:' as info;
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'schemas' 
ORDER BY ordinal_position;

-- 2. VER CONTEÚDO DA TABELA SCHEMAS
SELECT 'Conteúdo da tabela schemas:' as info;
SELECT * FROM schemas;

-- 3. INSERIR/ATUALIZAR SCHEMA BIBLIVRE4 (usando só colunas que existem)
-- Tente este INSERT primeiro:
INSERT INTO schemas (schema, name)
VALUES ('biblivre4', 'Biblivre 4')
ON CONFLICT (schema) DO UPDATE
SET name = 'Biblivre 4';

-- 4. VERIFICAR TRADUÇÕES ESSENCIAIS
SELECT 'Traduções essenciais:' as info;
SELECT language, key, text FROM translations 
WHERE key IN ('language_code', 'language_name', 'login.access_denied')
ORDER BY language, key;

-- 5. VERIFICAR CONFIGURAÇÕES
SELECT 'Configurações:' as info;
SELECT * FROM configurations LIMIT 10;

-- 6. VERIFICAR VERSÕES
SELECT 'Versões instaladas:' as info;
SELECT * FROM versions;

-- 7. VERIFICAR USUÁRIO ADMIN
SELECT 'Usuário admin:' as info;
SELECT id, login, name, status FROM users WHERE login = 'admin';

-- 8. RESUMO
SELECT 'RESUMO:' as info;
SELECT 
    'schemas' as tabela,
    COUNT(*) as registros
FROM schemas
UNION ALL
SELECT 
    'configurations',
    COUNT(*)
FROM configurations
UNION ALL
SELECT 
    'translations',
    COUNT(*)
FROM translations
UNION ALL
SELECT 
    'users',
    COUNT(*)
FROM users
UNION ALL
SELECT 
    'versions',
    COUNT(*)
FROM versions;
