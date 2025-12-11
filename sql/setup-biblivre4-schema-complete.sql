-- Script completo para configurar schema biblivre4 com todas as tabelas
-- Execute este script completo no Supabase SQL Editor

-- 1. Criar schema biblivre4 se não existir
CREATE SCHEMA IF NOT EXISTS biblivre4;

-- 2. Listar todas as tabelas no schema public
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

-- 3. Copiar TODAS as tabelas do public para biblivre4
-- IMPORTANTE: Execute cada bloco separadamente, verificando o resultado

-- Copiar translations
DROP TABLE IF EXISTS biblivre4.translations CASCADE;
CREATE TABLE biblivre4.translations AS SELECT * FROM public.translations;
ALTER TABLE biblivre4.translations ADD PRIMARY KEY (language, key);
CREATE INDEX idx_translations_key ON biblivre4.translations(key);
CREATE INDEX idx_translations_language ON biblivre4.translations(language);

-- Copiar configurations  
DROP TABLE IF EXISTS biblivre4.configurations CASCADE;
CREATE TABLE biblivre4.configurations AS SELECT * FROM public.configurations;
ALTER TABLE biblivre4.configurations ADD PRIMARY KEY (key);
CREATE INDEX idx_configurations_key ON biblivre4.configurations(key);

-- Copiar users
DROP TABLE IF EXISTS biblivre4.users CASCADE;
CREATE TABLE biblivre4.users AS SELECT * FROM public.users;
ALTER TABLE biblivre4.users ADD PRIMARY KEY (id);

-- Copiar logins
DROP TABLE IF EXISTS biblivre4.logins CASCADE;
CREATE TABLE biblivre4.logins AS SELECT * FROM public.logins;
ALTER TABLE biblivre4.logins ADD PRIMARY KEY (id);

-- Copiar biblio_indexing_groups
DROP TABLE IF EXISTS biblivre4.biblio_indexing_groups CASCADE;
CREATE TABLE biblivre4.biblio_indexing_groups AS SELECT * FROM public.biblio_indexing_groups;
ALTER TABLE biblivre4.biblio_indexing_groups ADD PRIMARY KEY (id);

-- Copiar authorities_indexing_groups
DROP TABLE IF EXISTS biblivre4.authorities_indexing_groups CASCADE;
CREATE TABLE biblivre4.authorities_indexing_groups AS SELECT * FROM public.authorities_indexing_groups;
ALTER TABLE biblivre4.authorities_indexing_groups ADD PRIMARY KEY (id);

-- Copiar vocabulary_indexing_groups
DROP TABLE IF EXISTS biblivre4.vocabulary_indexing_groups CASCADE;
CREATE TABLE biblivre4.vocabulary_indexing_groups AS SELECT * FROM public.vocabulary_indexing_groups;
ALTER TABLE biblivre4.vocabulary_indexing_groups ADD PRIMARY KEY (id);

-- Copiar versions (se existir)
DROP TABLE IF EXISTS biblivre4.versions CASCADE;
CREATE TABLE biblivre4.versions AS SELECT * FROM public.versions WHERE false;
-- Não copiar dados de versions, deixar vazia para o Biblivre popular

-- 4. Verificar encoding das traduções
SELECT 
    'biblivre4' as schema,
    COUNT(*) as total_translations,
    COUNT(DISTINCT language) as languages
FROM biblivre4.translations;

-- Verificar uma tradução específica para checar encoding
SELECT language, key, text, 
       convert_from(convert_to(text, 'LATIN1'), 'UTF8') as text_fixed
FROM biblivre4.translations 
WHERE key = 'text.main.logged_in'
LIMIT 5;

-- 5. Se o encoding estiver errado, CORRIGIR:
-- ATENÇÃO: Só execute este UPDATE se o encoding estiver realmente errado
-- Verifique primeiro com a query acima

-- UPDATE biblivre4.translations 
-- SET text = convert_from(convert_to(text, 'LATIN1'), 'UTF8');

-- 6. Verificações finais
SELECT COUNT(*) as total FROM biblivre4.translations;
SELECT COUNT(*) as total FROM biblivre4.configurations;
SELECT COUNT(*) as total FROM biblivre4.users;
SELECT COUNT(*) as total FROM biblivre4.logins;

-- Verificar language_name
SELECT language, text FROM biblivre4.translations 
WHERE key = 'language_name' 
ORDER BY language;

-- Verificar configurações de idioma
SELECT key, value FROM biblivre4.configurations 
WHERE key LIKE '%language%';
