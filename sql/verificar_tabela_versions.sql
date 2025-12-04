-- Verificar se tabela versions existe
SELECT 
  table_schema,
  table_name,
  'EXISTS' as status
FROM information_schema.tables 
WHERE table_name = 'versions';

-- Se não existir, verificar todas as tabelas que começam com 'v'
SELECT 
  table_schema,
  table_name
FROM information_schema.tables 
WHERE table_schema = 'global' 
  AND table_name LIKE 'v%'
ORDER BY table_name;
