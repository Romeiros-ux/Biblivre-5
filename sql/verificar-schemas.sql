-- Verificar em qual schema estão as tabelas

-- 1. Listar todas as tabelas no schema 'global'
SELECT 'Tabelas no schema GLOBAL:' AS info, COUNT(*) AS quantidade
FROM pg_tables 
WHERE schemaname = 'global';

SELECT 'Detalhes das tabelas no schema GLOBAL:' AS info;
SELECT schemaname, tablename 
FROM pg_tables 
WHERE schemaname = 'global'
ORDER BY tablename
LIMIT 10;

-- 2. Listar todas as tabelas no schema 'public'
SELECT 'Tabelas no schema PUBLIC:' AS info, COUNT(*) AS quantidade
FROM pg_tables 
WHERE schemaname = 'public';

SELECT 'Detalhes das tabelas no schema PUBLIC (Biblivre):' AS info;
SELECT schemaname, tablename 
FROM pg_tables 
WHERE schemaname = 'public'
  AND (tablename LIKE '%versions%' 
    OR tablename LIKE '%translations%' 
    OR tablename LIKE '%configurations%'
    OR tablename LIKE '%users%'
    OR tablename LIKE '%biblio%')
ORDER BY tablename;

-- 3. Procurar a tabela 'versions' em todos os schemas
SELECT 'Procurando tabela VERSIONS em todos os schemas:' AS info;
SELECT schemaname, tablename 
FROM pg_tables 
WHERE tablename = 'versions';
