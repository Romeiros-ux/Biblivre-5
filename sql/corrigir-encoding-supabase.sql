-- ============================================================
-- CORRECAO COMPLETA DE ENCODING UTF-8
-- Script para corrigir double-encoding em todas as tabelas
-- Compativel com Supabase SQL Editor
-- ============================================================

SET search_path = biblivre4;

-- ============================================================
-- PARTE 1: DIAGNOSTICO INICIAL
-- ============================================================

-- Contar registros com problema em CONFIGURATIONS
SELECT 'CONFIGURATIONS com problema:' as tabela,
       COUNT(*) as total
FROM biblivre4.configurations
WHERE value LIKE '%Ã%';

-- Contar registros com problema em TRANSLATIONS
SELECT 'TRANSLATIONS com problema:' as tabela,
       COUNT(*) as total
FROM biblivre4.translations
WHERE text LIKE '%Ã%';

-- ============================================================
-- PARTE 2: CORRECAO DA TABELA CONFIGURATIONS
-- ============================================================

UPDATE biblivre4.configurations
SET value = 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    value,
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É'), 'Ã', 'Í'), 'Ã"', 'Ó'), 'Ãš', 'Ú'),
    'Ã‚', 'Â'), 'Ãˆ', 'Ê'), 'ÃŽ', 'Î'), 'Ã"', 'Ô'),
    'Ãƒ', 'Ã'), 'Ã•', 'Õ'),
    'Â°', '°'), 'Âº', 'º'), 'Âª', 'ª')
WHERE value LIKE '%Ã%' OR value LIKE '%Â%';

-- ============================================================
-- PARTE 3: CORRECAO DA TABELA TRANSLATIONS
-- ============================================================

UPDATE biblivre4.translations
SET text = 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    text,
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É'), 'Ã', 'Í'), 'Ã"', 'Ó'), 'Ãš', 'Ú'),
    'Ã‚', 'Â'), 'Ãˆ', 'Ê'), 'ÃŽ', 'Î'), 'Ã"', 'Ô'),
    'Ãƒ', 'Ã'), 'Ã•', 'Õ'),
    'Â°', '°'), 'Âº', 'º'), 'Âª', 'ª')
WHERE text LIKE '%Ã%' OR text LIKE '%Â%';

-- ============================================================
-- PARTE 4: VERIFICACAO FINAL
-- ============================================================

-- Verificar se ainda existe algum problema
SELECT 'CONFIGURATIONS ainda com problema:' as status,
       COUNT(*) as total
FROM biblivre4.configurations
WHERE value LIKE '%Ã%';

SELECT 'TRANSLATIONS ainda com problema:' as status,
       COUNT(*) as total
FROM biblivre4.translations
WHERE text LIKE '%Ã%';

-- Mostrar configuracoes importantes corrigidas
SELECT key, value
FROM biblivre4.configurations
WHERE key IN ('general.title', 'general.subtitle', 'general.description')
ORDER BY key;

-- Mostrar alguns exemplos de traducoes corrigidas
SELECT key, text
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND key IN ('menu.cataloging', 'menu.administration', 'menu.circulation', 
              'circulation.user_field.name', 'label.author', 'label.title')
ORDER BY key;
