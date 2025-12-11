-- Verificar traduções com 'language' no nome
SELECT key, language, text 
FROM translations 
WHERE key LIKE '%language%'
ORDER BY key;
