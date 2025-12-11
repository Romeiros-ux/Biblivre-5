-- Verificar TODAS as funções relacionadas a indexing_groups
SELECT 
    n.nspname as schema_name,
    p.proname as function_name,
    pg_get_functiondef(p.oid) as function_definition
FROM pg_proc p
JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE p.proname LIKE '%indexing%'
    OR pg_get_functiondef(p.oid) LIKE '%indexing_groups%'
ORDER BY p.proname;

-- Verificar se há alguma extensão ou configuração especial
SHOW search_path;

-- Verificar se há políticas RLS (Row Level Security) nas tabelas
SELECT schemaname, tablename, policyname, permissive, roles, cmd, qual, with_check
FROM pg_policies
WHERE tablename IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups');
