-- ============================================================
-- CORREÇÃO DE ENCODING POR SUBSTITUIÇÃO DE PADRÕES
-- ============================================================
-- Substitui os padrões de double-encoding mais comuns

SET search_path = biblivre4;

-- Backup
CREATE TABLE IF NOT EXISTS biblivre4.translations_backup_encoding2 AS
SELECT * FROM biblivre4.translations;

-- Corrigir os padrões mais comuns de double-encoding
UPDATE biblivre4.translations
SET text = 
    -- Vogais com acento agudo
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    -- Vogais com acento circunflexo
    REPLACE(REPLACE(REPLACE(
    -- Vogais com til
    REPLACE(REPLACE(
    -- Cedilha
    REPLACE(REPLACE(
    -- Vogais com acento grave
    REPLACE(REPLACE(REPLACE(
    -- Outros caracteres especiais
    REPLACE(REPLACE(REPLACE(
    text,
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É')
WHERE language = 'pt-BR'
  AND text LIKE '%Ã%';

-- Verificar quantos ainda têm problema
SELECT COUNT(*) as ainda_tem_problema
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND text LIKE '%Ã%';

-- Ver exemplos
SELECT key, text
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND key IN ('menu.cataloging', 'circulation.user_field.name', 'menu.administration')
ORDER BY key;

-- Verificar se "Catalogação" está correto agora
SELECT COUNT(*) as catalogacao_correto
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND text LIKE '%Catalogação%';
