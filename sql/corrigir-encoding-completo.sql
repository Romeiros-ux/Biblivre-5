-- ============================================================
-- CORREÇÃO COMPLETA DE ENCODING UTF-8
-- Script unificado para corrigir double-encoding em todas as tabelas
-- Compatível com Supabase SQL Editor
-- ============================================================

SET search_path = biblivre4;

-- ============================================================
-- PARTE 1: DIAGNÓSTICO INICIAL
-- ============================================================

-- Ver encoding atual do banco
SHOW server_encoding;
SHOW client_encoding;

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

-- Exemplos de problemas em CONFIGURATIONS
SELECT key, 
       value as valor_errado,
       length(value) as chars,
       octet_length(value) as bytes
FROM biblivre4.configurations
WHERE value LIKE '%Ã%'
ORDER BY key
LIMIT 5;

-- Exemplos de problemas em TRANSLATIONS
SELECT language,
       key,
       text as texto_errado,
       length(text) as chars,
       octet_length(text) as bytes
FROM biblivre4.translations
WHERE text LIKE '%Ã%'
ORDER BY key
LIMIT 10;

-- ============================================================
-- PARTE 2: CORREÇÃO DA TABELA CONFIGURATIONS
-- ============================================================

-- Backup dos valores antes da correção (opcional)
-- CREATE TABLE IF NOT EXISTS biblivre4.configurations_backup AS 
-- SELECT * FROM biblivre4.configurations;

-- Corrigir double-encoding na tabela CONFIGURATIONS
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
    REPLACE(REPLACE(REPLACE(
    value,
    -- Vogais com acento agudo
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    -- Vogais com acento circunflexo
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    -- Vogais com til
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    -- Cedilha
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    -- Vogais com acento grave
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    -- Maiúsculas com acento
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É'), 'Ã', 'Í'), 'Ã"', 'Ó'), 'Ãš', 'Ú'),
    'Ã‚', 'Â'), 'Ãˆ', 'Ê'), 'ÃŽ', 'Î'), 'Ã"', 'Ô'),
    'Ãƒ', 'Ã'), 'Ã•', 'Õ'),
    -- Outros caracteres especiais
    'Â°', '°'), 'Âº', 'º'), 'Âª', 'ª'),
    'Ã±', 'ñ'), 'Ã'', 'Ñ')
WHERE value LIKE '%Ã%' OR value LIKE '%Â%';

-- ============================================================
-- PARTE 3: CORREÇÃO DA TABELA TRANSLATIONS
-- ============================================================

-- Backup dos textos antes da correção (opcional)
-- CREATE TABLE IF NOT EXISTS biblivre4.translations_backup AS 
-- SELECT * FROM biblivre4.translations;

-- Corrigir double-encoding na tabela TRANSLATIONS
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
    REPLACE(REPLACE(REPLACE(
    text,
    -- Vogais com acento agudo
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    -- Vogais com acento circunflexo
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    -- Vogais com til
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    -- Cedilha
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    -- Vogais com acento grave
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    -- Maiúsculas com acento
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É'), 'Ã', 'Í'), 'Ã"', 'Ó'), 'Ãš', 'Ú'),
    'Ã‚', 'Â'), 'Ãˆ', 'Ê'), 'ÃŽ', 'Î'), 'Ã"', 'Ô'),
    'Ãƒ', 'Ã'), 'Ã•', 'Õ'),
    -- Outros caracteres especiais
    'Â°', '°'), 'Âº', 'º'), 'Âª', 'ª'),
    'Ã±', 'ñ'), 'Ã'', 'Ñ')
WHERE text LIKE '%Ã%' OR text LIKE '%Â%';

-- ============================================================
-- PARTE 4: VERIFICAÇÃO FINAL
-- ============================================================

-- Verificar se ainda existe algum problema em CONFIGURATIONS
SELECT 'CONFIGURATIONS ainda com problema:' as status,
       COUNT(*) as total
FROM biblivre4.configurations
WHERE value LIKE '%Ã%';

-- Verificar se ainda existe algum problema em TRANSLATIONS
SELECT 'TRANSLATIONS ainda com problema:' as status,
       COUNT(*) as total
FROM biblivre4.translations
WHERE text LIKE '%Ã%';

-- Mostrar configurações importantes corrigidas
SELECT key, value
FROM biblivre4.configurations
WHERE key IN ('general.title', 'general.subtitle', 'general.description')
ORDER BY key;

-- Mostrar alguns exemplos de traduções corrigidas
SELECT key, text
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND key IN ('menu.cataloging', 'menu.administration', 'menu.circulation', 
              'circulation.user_field.name', 'label.author', 'label.title')
ORDER BY key;

-- Verificar se caracteres especiais estão corretos
SELECT key, text,
       CASE 
           WHEN text LIKE '%ç%' OR text LIKE '%ã%' OR text LIKE '%õ%' 
                OR text LIKE '%á%' OR text LIKE '%é%' OR text LIKE '%í%' 
                OR text LIKE '%ó%' OR text LIKE '%ú%' OR text LIKE '%â%' 
                OR text LIKE '%ê%' OR text LIKE '%ô%' THEN 'OK ✓'
           ELSE 'Verificar'
       END as status
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND (text LIKE '%ç%' OR text LIKE '%ã%' OR text LIKE '%õ%' 
       OR text LIKE '%á%' OR text LIKE '%é%' OR text LIKE '%í%' 
       OR text LIKE '%ó%' OR text LIKE '%ú%')
LIMIT 5;

-- ============================================================
-- CORREÇÃO COMPLETA!
-- Próximos passos:
-- 1. Reinicie a aplicação no Render
-- 2. Limpe o cache do navegador (Ctrl+Shift+R)
-- 3. Acesse a aplicação e verifique o layout
-- ============================================================
