-- Verificar se existem traduções language_name
SELECT language, key, text 
FROM translations 
WHERE key = 'language_name'
ORDER BY language;
