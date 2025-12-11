-- TESTE 2: Estrutura da tabela schemas
SELECT column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'schemas' 
ORDER BY ordinal_position;
