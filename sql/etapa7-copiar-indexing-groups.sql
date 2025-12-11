-- ============================================================
-- ETAPA 7: Copiar tabelas INDEXING_GROUPS
-- ============================================================
DROP TABLE IF EXISTS biblivre4.biblio_indexing_groups CASCADE;
CREATE TABLE biblivre4.biblio_indexing_groups AS SELECT * FROM public.biblio_indexing_groups;
ALTER TABLE biblivre4.biblio_indexing_groups ADD PRIMARY KEY (id);

DROP TABLE IF EXISTS biblivre4.authorities_indexing_groups CASCADE;
CREATE TABLE biblivre4.authorities_indexing_groups AS SELECT * FROM public.authorities_indexing_groups;
ALTER TABLE biblivre4.authorities_indexing_groups ADD PRIMARY KEY (id);

DROP TABLE IF EXISTS biblivre4.vocabulary_indexing_groups CASCADE;
CREATE TABLE biblivre4.vocabulary_indexing_groups AS SELECT * FROM public.vocabulary_indexing_groups;
ALTER TABLE biblivre4.vocabulary_indexing_groups ADD PRIMARY KEY (id);

-- Verificar cópia
SELECT COUNT(*) FROM biblivre4.biblio_indexing_groups;
SELECT COUNT(*) FROM biblivre4.authorities_indexing_groups;
SELECT COUNT(*) FROM biblivre4.vocabulary_indexing_groups;
