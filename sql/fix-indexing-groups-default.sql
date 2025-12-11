-- Corrigir DEFAULT das sequences para tabelas indexing_groups
-- Isso faz o PostgreSQL usar automaticamente a sequence ao inserir registros

-- 1. Biblio indexing groups (existe com certeza)
ALTER TABLE biblio_indexing_groups 
ALTER COLUMN id SET DEFAULT nextval('biblio_indexing_groups_id_seq');

-- 2. Authorities indexing groups (se existir)
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'authorities_indexing_groups') THEN
        ALTER TABLE authorities_indexing_groups 
        ALTER COLUMN id SET DEFAULT nextval('authorities_indexing_groups_id_seq');
    END IF;
END $$;

-- 3. Holding indexing groups (se existir)
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'holding_indexing_groups') THEN
        ALTER TABLE holding_indexing_groups 
        ALTER COLUMN id SET DEFAULT nextval('holding_indexing_groups_id_seq');
    END IF;
END $$;

-- 4. Vocabulary indexing groups (se existir)
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'vocabulary_indexing_groups') THEN
        ALTER TABLE vocabulary_indexing_groups 
        ALTER COLUMN id SET DEFAULT nextval('vocabulary_indexing_groups_id_seq');
    END IF;
END $$;

-- Verificar se o DEFAULT foi configurado corretamente
SELECT 
    table_name,
    column_name, 
    column_default 
FROM information_schema.columns 
WHERE table_name LIKE '%indexing_groups' 
AND column_name = 'id'
ORDER BY table_name;
