-- Verificar se há RULES reescrevendo INSERTs
SELECT 
    schemaname,
    tablename,
    rulename,
    definition
FROM pg_rules
WHERE tablename IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
ORDER BY tablename, rulename;

-- Verificar novamente o column_default para ter certeza
SELECT 
    table_name,
    column_name,
    column_default,
    is_nullable,
    data_type,
    udt_name
FROM information_schema.columns
WHERE table_name IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
    AND column_name = 'id'
ORDER BY table_name;

-- Testar INSERT novamente com EXATAMENTE a mesma syntax que o código Java usa
BEGIN;
    -- Teste 1: INSERT com 4 colunas (igual ao código Java)
    INSERT INTO biblio_indexing_groups (translation_key, datafields, sortable, default_sort)
    VALUES ('test_java_syntax', '999_x', true, false);
    
    -- Ver resultado
    SELECT * FROM biblio_indexing_groups WHERE translation_key = 'test_java_syntax';
ROLLBACK;
