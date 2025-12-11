-- 1. Verificar RULES nas tabelas
SELECT 
    schemaname,
    tablename,
    rulename,
    definition
FROM pg_rules
WHERE tablename IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups');

-- 2. Verificar configuração DEFAULT detalhada
SELECT 
    c.table_name,
    c.column_name,
    c.column_default,
    c.is_nullable,
    c.data_type
FROM information_schema.columns c
WHERE c.table_name IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
    AND c.column_name = 'id'
ORDER BY c.table_name;

-- 3. Verificar se as sequences existem e estão corretas
SELECT 
    sequence_schema,
    sequence_name,
    data_type,
    start_value,
    minimum_value,
    maximum_value,
    increment,
    cycle_option
FROM information_schema.sequences
WHERE sequence_name LIKE '%indexing_groups%'
ORDER BY sequence_name;

-- 4. Testar INSERT manualmente (simulando o que o Java faz)
-- IMPORTANTE: Este é apenas um teste, não vai persistir devido ao ROLLBACK
BEGIN;
    INSERT INTO biblio_indexing_groups (translation_key, datafields, sortable) 
    VALUES ('test_insert', '999_x', true);
    
    -- Ver o que foi inserido
    SELECT * FROM biblio_indexing_groups WHERE translation_key = 'test_insert';
ROLLBACK;
