-- Verificar todos os triggers nas tabelas indexing_groups
SELECT 
    trigger_name,
    event_manipulation,
    event_object_table,
    action_statement,
    action_timing
FROM information_schema.triggers
WHERE event_object_table IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
ORDER BY event_object_table, trigger_name;
