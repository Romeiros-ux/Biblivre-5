-- ============================================================
-- CORRIGIR ENCODING NA TABELA CONFIGURATIONS
-- ============================================================

SET search_path = biblivre4;

-- Ver configurações atuais com problema de encoding
SELECT key, value
FROM biblivre4.configurations
WHERE value LIKE '%Ã%'
ORDER BY key;

-- Corrigir double-encoding nas configurações
UPDATE biblivre4.configurations
SET value = 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    REPLACE(REPLACE(REPLACE(
    value,
    'Ã¡', 'á'), 'Ã©', 'é'), 'Ã­', 'í'), 'Ã³', 'ó'), 'Ãº', 'ú'),
    'Ã¢', 'â'), 'Ãª', 'ê'), 'Ã´', 'ô'),
    'Ã£', 'ã'), 'Ãµ', 'õ'),
    'Ã§', 'ç'), 'Ã‡', 'Ç'),
    'Ã ', 'à'), 'Ã¨', 'è'), 'Ã¬', 'ì'),
    'Ã€', 'À'), 'Ã', 'Á'), 'Ã‰', 'É')
WHERE value LIKE '%Ã%';

-- Verificar correção
SELECT key, value
FROM biblivre4.configurations
WHERE key IN ('general.subtitle', 'general.title')
ORDER BY key;
