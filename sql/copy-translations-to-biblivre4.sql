-- 1. Verificar em qual schema as traduções existem
SELECT 
    schemaname as schema,
    COUNT(*) as total_translations
FROM pg_tables 
WHERE tablename = 'translations'
GROUP BY schemaname;

-- 2. Se existirem traduções no public, contar language_name
SELECT COUNT(*) as language_name_count 
FROM public.translations 
WHERE key = 'language_name';

-- 3. Ver as traduções language_name no public
SELECT language, text 
FROM public.translations 
WHERE key = 'language_name'
ORDER BY language;

-- 4. COPIAR traduções do public para biblivre4 (se necessário)
-- Primeiro, garantir que o schema biblivre4 existe
CREATE SCHEMA IF NOT EXISTS biblivre4;

-- Copiar TODA a tabela translations do public para biblivre4
DROP TABLE IF EXISTS biblivre4.translations CASCADE;
CREATE TABLE biblivre4.translations AS 
SELECT * FROM public.translations;

-- Criar índices e constraints
ALTER TABLE biblivre4.translations ADD PRIMARY KEY (language, key);
CREATE INDEX idx_translations_key ON biblivre4.translations(key);
CREATE INDEX idx_translations_language ON biblivre4.translations(language);

-- 5. Verificar se copiou corretamente
SELECT COUNT(*) as total_in_biblivre4 
FROM biblivre4.translations;

SELECT language, text 
FROM biblivre4.translations 
WHERE key = 'language_name'
ORDER BY language;
