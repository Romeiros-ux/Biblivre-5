-- Limpar dados das tabelas indexing_groups e deixar código reinserir
-- O DEFAULT já está configurado, só precisa limpar para forçar reinserção

-- 1. Limpar biblio_indexing_groups
TRUNCATE TABLE biblio_indexing_groups RESTART IDENTITY CASCADE;

-- 2. Limpar authorities_indexing_groups (se existir)
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'authorities_indexing_groups') THEN
        EXECUTE 'TRUNCATE TABLE authorities_indexing_groups RESTART IDENTITY CASCADE';
    END IF;
END $$;

-- 3. Limpar vocabulary_indexing_groups (se existir)
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'vocabulary_indexing_groups') THEN
        EXECUTE 'TRUNCATE TABLE vocabulary_indexing_groups RESTART IDENTITY CASCADE';
    END IF;
END $$;

-- 4. Verificar se as tabelas estão vazias
SELECT 'biblio_indexing_groups' as tabela, COUNT(*) as registros FROM biblio_indexing_groups
UNION ALL
SELECT 'authorities_indexing_groups', COUNT(*) FROM authorities_indexing_groups
UNION ALL
SELECT 'vocabulary_indexing_groups', COUNT(*) FROM vocabulary_indexing_groups;

-- 5. Confirmar que o DEFAULT está configurado
SELECT 
    table_name,
    column_name, 
    column_default 
FROM information_schema.columns 
WHERE table_name IN ('biblio_indexing_groups', 'authorities_indexing_groups', 'vocabulary_indexing_groups')
AND column_name = 'id'
AND column_default IS NOT NULL
ORDER BY table_name;
