-- TESTE 5: Resumo de contagens
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
