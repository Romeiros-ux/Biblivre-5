-- Fix: Criar sequences para indexing_groups que faltam no schema public
-- Executar este script no Supabase SQL Editor

-- 1. Authorities indexing groups sequence
CREATE SEQUENCE IF NOT EXISTS authorities_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE authorities_indexing_groups_id_seq OWNED BY authorities_indexing_groups.id;
ALTER TABLE authorities_indexing_groups ALTER COLUMN id SET DEFAULT nextval('authorities_indexing_groups_id_seq'::regclass);

-- 2. Biblio indexing groups sequence
CREATE SEQUENCE IF NOT EXISTS biblio_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_indexing_groups_id_seq OWNED BY biblio_indexing_groups.id;
ALTER TABLE biblio_indexing_groups ALTER COLUMN id SET DEFAULT nextval('biblio_indexing_groups_id_seq'::regclass);

-- 3. Holdings indexing groups sequence
CREATE SEQUENCE IF NOT EXISTS holding_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE holding_indexing_groups_id_seq OWNED BY holding_indexing_groups.id;
ALTER TABLE holding_indexing_groups ALTER COLUMN id SET DEFAULT nextval('holding_indexing_groups_id_seq'::regclass);

-- 4. Vocabulary indexing groups sequence
CREATE SEQUENCE IF NOT EXISTS vocabulary_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vocabulary_indexing_groups_id_seq OWNED BY vocabulary_indexing_groups.id;
ALTER TABLE vocabulary_indexing_groups ALTER COLUMN id SET DEFAULT nextval('vocabulary_indexing_groups_id_seq'::regclass);

-- 5. Atualizar valor atual das sequences com base nos dados existentes
SELECT setval('authorities_indexing_groups_id_seq', COALESCE((SELECT MAX(id) FROM authorities_indexing_groups), 1), true);
SELECT setval('biblio_indexing_groups_id_seq', COALESCE((SELECT MAX(id) FROM biblio_indexing_groups), 1), true);
SELECT setval('holding_indexing_groups_id_seq', COALESCE((SELECT MAX(id) FROM holding_indexing_groups), 1), true);
SELECT setval('vocabulary_indexing_groups_id_seq', COALESCE((SELECT MAX(id) FROM vocabulary_indexing_groups), 1), true);

-- Verificar resultado
SELECT 
    'authorities_indexing_groups_id_seq' as sequence_name,
    last_value,
    is_called
FROM authorities_indexing_groups_id_seq
UNION ALL
SELECT 
    'biblio_indexing_groups_id_seq',
    last_value,
    is_called
FROM biblio_indexing_groups_id_seq
UNION ALL
SELECT 
    'holding_indexing_groups_id_seq',
    last_value,
    is_called
FROM holding_indexing_groups_id_seq
UNION ALL
SELECT 
    'vocabulary_indexing_groups_id_seq',
    last_value,
    is_called
FROM vocabulary_indexing_groups_id_seq;
