-- ============================================================
-- DIAGNÓSTICO DETALHADO DE ENCODING
-- ============================================================

-- 1. Ver encoding do banco
SHOW SERVER_ENCODING;
SHOW CLIENT_ENCODING;

-- 2. Ver alguns textos que aparecem na tela
SELECT language, key, 
       text,
       length(text) as tamanho,
       octet_length(text) as bytes
FROM biblivre4.translations 
WHERE key IN ('text.main.logged_in', 'menu.help', 'language_name')
  AND language = 'pt-BR'
ORDER BY key;

-- 3. Ver especificamente "Versão 4.0 Beta"
SELECT language, key, text
FROM biblivre4.translations 
WHERE text LIKE '%Vers%'
  AND language = 'pt-BR'
LIMIT 10;

-- 4. Checar se há HTML entities no texto
SELECT language, key, text
FROM biblivre4.translations 
WHERE text LIKE '%&%'
  AND language = 'pt-BR'
LIMIT 20;
