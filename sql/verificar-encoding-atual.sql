-- ============================================================
-- VERIFICAR SE AS CORREÇÕES DE ENCODING FUNCIONARAM
-- ============================================================

-- 1. Verificar textos específicos que aparecem na tela
SELECT language, key, text, 
       length(text) as tamanho,
       octet_length(text) as bytes
FROM biblivre4.translations 
WHERE key IN (
    'text.main.logged_out',
    'menu.cataloging',
    'circulation.custom.user_field.address',
    'search.bibliographic.open_item_button'
)
  AND language = 'pt-BR'
ORDER BY key;

-- 2. Procurar por texto específico que deveria ser "versão"
SELECT language, key, text
FROM biblivre4.translations 
WHERE text LIKE '%versão%'
  AND language = 'pt-BR'
LIMIT 10;

-- 3. Procurar por texto com problema "versÃ£o"
SELECT language, key, text
FROM biblivre4.translations 
WHERE text LIKE '%versÃ£o%'
  AND language = 'pt-BR'
LIMIT 10;

-- 4. Verificar se ainda há HTML entities
SELECT COUNT(*) as ainda_tem_entities
FROM biblivre4.translations 
WHERE text LIKE '%&%atilde;%'
   OR text LIKE '%&%aacute;%'
   OR text LIKE '%&%ordm;%';
