-- Verificar TODOS os triggers (incluindo BEFORE INSERT)
SELECT 
    trigger_name,
    event_manipulation,
    event_object_table,
    action_timing,
    action_orientation,
    action_statement
FROM information_schema.triggers
WHERE event_object_table IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
ORDER BY event_object_table, action_timing, event_manipulation;

-- Verificar definição completa dos triggers
SELECT 
    tgname AS trigger_name,
    tgtype AS trigger_type,
    tgfoid::regproc AS trigger_function,
    tgenabled AS enabled
FROM pg_trigger
WHERE tgrelid IN (
    'biblio_indexing_groups'::regclass,
    'authorities_indexing_groups'::regclass,
    'vocabulary_indexing_groups'::regclass
)
AND NOT tgisinternal
ORDER BY tgrelid::regclass::text, tgname;
