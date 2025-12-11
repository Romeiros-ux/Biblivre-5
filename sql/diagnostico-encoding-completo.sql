-- ============================================================
-- DIAGNÓSTICO COMPLETO DE ENCODING
-- ============================================================

SET search_path = biblivre4;

-- 1. Verificar o encoding do banco
SHOW server_encoding;
SHOW client_encoding;

-- 2. Ver exemplos de textos problemáticos
SELECT language, key, text,
       length(text) as chars,
       octet_length(text) as bytes,
       encode(text::bytea, 'hex') as hex
FROM biblivre4.translations 
WHERE language = 'pt-BR'
  AND key IN ('menu.cataloging', 'circulation.user_field.name')
ORDER BY key;

-- 3. Procurar por "Catalogação" escrito CORRETAMENTE
SELECT COUNT(*) as tem_correto
FROM biblivre4.translations 
WHERE language = 'pt-BR'
  AND text LIKE '%Catalogação%';

-- 4. Procurar por "CatalogaÃ§Ã£o" (encoding errado)
SELECT COUNT(*) as tem_errado
FROM biblivre4.translations 
WHERE language = 'pt-BR'
  AND text LIKE '%CatalogaÃ§Ã£o%';

-- 5. Ver os primeiros 10 registros com caracteres acentuados
SELECT key, text, 
       length(text) as chars,
       octet_length(text) as bytes
FROM biblivre4.translations 
WHERE language = 'pt-BR'
  AND (text LIKE '%ção%' OR text LIKE '%ário%' OR text LIKE '%ção%')
LIMIT 10;
