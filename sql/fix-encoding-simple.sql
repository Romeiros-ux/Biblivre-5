-- ============================================================
-- CORRECAO DE ENCODING UTF-8 - VERSAO SIMPLIFICADA
-- Compativel com Supabase SQL Editor
-- ============================================================

SET search_path = biblivre4;

-- Diagnostico inicial
SELECT 'CONFIGURATIONS com problema' as tabela, COUNT(*) as total
FROM biblivre4.configurations WHERE value LIKE '%Ã%';

SELECT 'TRANSLATIONS com problema' as tabela, COUNT(*) as total
FROM biblivre4.translations WHERE text LIKE '%Ã%';

-- Corrigir CONFIGURATIONS
UPDATE biblivre4.configurations
SET value = 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    value,
    'Ã§', 'ç'),
    'Ã‡', 'Ç'),
    'Ã£', 'ã'),
    'Ãµ', 'õ'),
    'Ã¡', 'á'),
    'Ã©', 'é'),
    'Ã­', 'í'),
    'Ã³', 'ó'),
    'Ãº', 'ú'),
    'Ã¢', 'â'),
    'Ãª', 'ê'),
    'Ã´', 'ô'),
    'Ã ', 'à'),
    'Ã', 'Á'),
    'Ã‰', 'É'),
    'Ã"', 'Ó'),
    'Ã‚', 'Â'),
    'Ãƒ', 'Ã')
WHERE value LIKE '%Ã%';

-- Corrigir TRANSLATIONS
UPDATE biblivre4.translations
SET text = 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    text,
    'Ã§', 'ç'),
    'Ã‡', 'Ç'),
    'Ã£', 'ã'),
    'Ãµ', 'õ'),
    'Ã¡', 'á'),
    'Ã©', 'é'),
    'Ã­', 'í'),
    'Ã³', 'ó'),
    'Ãº', 'ú'),
    'Ã¢', 'â'),
    'Ãª', 'ê'),
    'Ã´', 'ô'),
    'Ã ', 'à'),
    'Ã', 'Á'),
    'Ã‰', 'É'),
    'Ã"', 'Ó'),
    'Ã‚', 'Â'),
    'Ãƒ', 'Ã')
WHERE text LIKE '%Ã%';

-- Verificacao final
SELECT 'CONFIGURATIONS restantes' as status, COUNT(*) as total
FROM biblivre4.configurations WHERE value LIKE '%Ã%';

SELECT 'TRANSLATIONS restantes' as status, COUNT(*) as total
FROM biblivre4.translations WHERE text LIKE '%Ã%';

-- Mostrar resultados
SELECT key, value FROM biblivre4.configurations
WHERE key IN ('general.title', 'general.subtitle') ORDER BY key;

SELECT key, text FROM biblivre4.translations
WHERE language = 'pt-BR' AND key = 'menu.cataloging' LIMIT 1;
