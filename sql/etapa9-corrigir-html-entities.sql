-- ============================================================
-- ETAPA 9: CORRIGIR HTML ENTITIES
-- ============================================================
-- O banco está com HTML entities (&ordm;, &atilde;, etc)
-- Precisamos converter para UTF-8 puro

-- Principais conversões necessárias:
UPDATE biblivre4.translations SET text = REPLACE(text, '&Atilde;', 'Ã');
UPDATE biblivre4.translations SET text = REPLACE(text, '&atilde;', 'ã');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Aacute;', 'Á');
UPDATE biblivre4.translations SET text = REPLACE(text, '&aacute;', 'á');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Acirc;', 'Â');
UPDATE biblivre4.translations SET text = REPLACE(text, '&acirc;', 'â');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Agrave;', 'À');
UPDATE biblivre4.translations SET text = REPLACE(text, '&agrave;', 'à');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Eacute;', 'É');
UPDATE biblivre4.translations SET text = REPLACE(text, '&eacute;', 'é');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Ecirc;', 'Ê');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ecirc;', 'ê');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Iacute;', 'Í');
UPDATE biblivre4.translations SET text = REPLACE(text, '&iacute;', 'í');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Oacute;', 'Ó');
UPDATE biblivre4.translations SET text = REPLACE(text, '&oacute;', 'ó');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Ocirc;', 'Ô');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ocirc;', 'ô');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Otilde;', 'Õ');
UPDATE biblivre4.translations SET text = REPLACE(text, '&otilde;', 'õ');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Uacute;', 'Ú');
UPDATE biblivre4.translations SET text = REPLACE(text, '&uacute;', 'ú');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Ucirc;', 'Û');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ucirc;', 'û');
UPDATE biblivre4.translations SET text = REPLACE(text, '&Ccedil;', 'Ç');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ccedil;', 'ç');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ordm;', 'º');
UPDATE biblivre4.translations SET text = REPLACE(text, '&ordf;', 'ª');
UPDATE biblivre4.translations SET text = REPLACE(text, '&nbsp;', ' ');
UPDATE biblivre4.translations SET text = REPLACE(text, '&amp;', '&');
UPDATE biblivre4.translations SET text = REPLACE(text, '&quot;', '"');
UPDATE biblivre4.translations SET text = REPLACE(text, '&lt;', '<');
UPDATE biblivre4.translations SET text = REPLACE(text, '&gt;', '>');
UPDATE biblivre4.translations SET text = REPLACE(text, '&copy;', '©');
UPDATE biblivre4.translations SET text = REPLACE(text, '&reg;', '®');
UPDATE biblivre4.translations SET text = REPLACE(text, '&pound;', '£');

-- Verificar correção
SELECT language, key, text
FROM biblivre4.translations 
WHERE key IN ('acquisition.request.field.id', 'menu.help', 'language_name')
  AND language = 'pt-BR'
ORDER BY key;

-- Contar quantas ainda têm HTML entities
SELECT COUNT(*) as ainda_tem_entities
FROM biblivre4.translations 
WHERE text LIKE '%&%';
