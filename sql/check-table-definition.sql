-- Verificar constraints e índices da tabela biblio_indexing_groups
SELECT 
    conname AS constraint_name,
    contype AS constraint_type,
    pg_get_constraintdef(oid) AS constraint_definition
FROM pg_constraint
WHERE conrelid = 'biblio_indexing_groups'::regclass
ORDER BY contype, conname;

-- Verificar a definição completa da tabela diretamente do catálogo
SELECT 
    a.attname AS column_name,
    pg_catalog.format_type(a.atttypid, a.atttypmod) AS data_type,
    a.attnotnull AS not_null,
    pg_catalog.pg_get_expr(d.adbin, d.adrelid) AS column_default
FROM pg_catalog.pg_attribute a
LEFT JOIN pg_catalog.pg_attrdef d ON (a.attrelid, a.attnum) = (d.adrelid, d.adnum)
WHERE a.attrelid = 'biblio_indexing_groups'::regclass
    AND a.attnum > 0 
    AND NOT a.attisdropped
ORDER BY a.attnum;
