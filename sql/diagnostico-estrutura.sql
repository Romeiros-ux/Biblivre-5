-- SCRIPT APENAS DE CONSULTA - SEM INSERÇÕES
-- Execute este script no Supabase SQL Editor

-- 1. LISTAR TODAS AS TABELAS DO BANCO
SELECT 'Tabelas existentes no banco:' as info;
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

-- 2. ESTRUTURA DA TABELA SCHEMAS
SELECT 'Estrutura da tabela SCHEMAS:' as info;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'schemas' 
ORDER BY ordinal_position;

-- 3. CONTEÚDO DA TABELA SCHEMAS
SELECT 'Conteúdo da tabela SCHEMAS:' as info;
SELECT * FROM schemas LIMIT 5;

-- 4. ESTRUTURA DA TABELA USERS
SELECT 'Estrutura da tabela USERS:' as info;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'users' 
ORDER BY ordinal_position;

-- 5. CONTEÚDO DA TABELA USERS (apenas primeiras 5 linhas)
SELECT 'Conteúdo da tabela USERS:' as info;
SELECT * FROM users LIMIT 5;

-- 6. ESTRUTURA DA TABELA CONFIGURATIONS
SELECT 'Estrutura da tabela CONFIGURATIONS:' as info;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'configurations' 
ORDER BY ordinal_position;

-- 7. CONTEÚDO DA TABELA CONFIGURATIONS
SELECT 'Conteúdo da tabela CONFIGURATIONS:' as info;
SELECT * FROM configurations LIMIT 10;

-- 8. ESTRUTURA DA TABELA TRANSLATIONS
SELECT 'Estrutura da tabela TRANSLATIONS:' as info;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'translations' 
ORDER BY ordinal_position;

-- 9. TRADUÇÕES ESSENCIAIS
SELECT 'Traduções de language_code e language_name:' as info;
SELECT language, key, text 
FROM translations 
WHERE key IN ('language_code', 'language_name', 'login.access_denied')
ORDER BY language, key;

-- 10. ESTRUTURA DA TABELA VERSIONS
SELECT 'Estrutura da tabela VERSIONS:' as info;
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'versions' 
ORDER BY ordinal_position;

-- 11. CONTEÚDO DA TABELA VERSIONS
SELECT 'Conteúdo da tabela VERSIONS:' as info;
SELECT * FROM versions;

-- 12. RESUMO DE CONTAGENS
SELECT 'RESUMO - Total de registros:' as info;
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
