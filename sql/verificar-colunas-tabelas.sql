-- Verificar estrutura da tabela translations
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'translations'
ORDER BY ordinal_position;

-- Verificar estrutura da tabela user_fields
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'user_fields'
ORDER BY ordinal_position;
