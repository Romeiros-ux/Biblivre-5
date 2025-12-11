-- ============================================================
-- ETAPA 2: Copiar tabela TRANSLATIONS
-- ============================================================
DROP TABLE IF EXISTS biblivre4.translations CASCADE;
CREATE TABLE biblivre4.translations AS SELECT * FROM public.translations;
ALTER TABLE biblivre4.translations ADD PRIMARY KEY (language, key);
CREATE INDEX idx_translations_key ON biblivre4.translations(key);
CREATE INDEX idx_translations_language ON biblivre4.translations(language);

-- Verificar cópia
SELECT COUNT(*) as total_translations FROM biblivre4.translations;
