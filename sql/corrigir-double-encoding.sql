-- ============================================================
-- CORREÇÃO DEFINITIVA DE DOUBLE-ENCODING UTF-8
-- ============================================================
-- Problema: Texto UTF-8 foi interpretado como Latin1 e salvo novamente como UTF-8
-- Solução: Converter de UTF-8 → Latin1 → UTF-8 corretamente

SET search_path = biblivre4;

-- Backup antes de corrigir
CREATE TABLE IF NOT EXISTS biblivre4.translations_backup_encoding AS
SELECT * FROM biblivre4.translations;

-- Corrigir double-encoding UTF-8
-- Converte: UTF-8 bytes → Latin1 interpretation → UTF-8 correct
UPDATE biblivre4.translations
SET text = convert_from(convert_to(text, 'LATIN1'), 'UTF8')
WHERE language = 'pt-BR'
  AND octet_length(text) > length(text); -- Só corrige textos com caracteres multi-byte

-- Verificar correção
SELECT COUNT(*) as ainda_tem_problema
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND text LIKE '%Ã%';

-- Ver exemplos corrigidos
SELECT key, text
FROM biblivre4.translations
WHERE language = 'pt-BR'
  AND key IN ('menu.cataloging', 'circulation.user_field.name', 'menu.administration')
ORDER BY key;
