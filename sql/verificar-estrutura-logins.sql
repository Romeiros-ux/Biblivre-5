-- ============================================================
-- VERIFICAR ESTRUTURA DA TABELA LOGINS
-- ============================================================

SET search_path = biblivre4;

-- 1. Ver estrutura da tabela
SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_schema = 'biblivre4' 
  AND table_name = 'logins'
ORDER BY ordinal_position;

-- 2. Ver todos os registros (com as colunas que existem)
SELECT *
FROM biblivre4.logins
ORDER BY id;

-- 3. Verificar se existe admin
SELECT *
FROM biblivre4.logins
WHERE login = 'admin';
