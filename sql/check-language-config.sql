-- Verificar traduções críticas para o sistema
SELECT 
    language,
    key,
    text
FROM translations
WHERE key IN ('language_code', 'language_name', 'login.access_denied')
ORDER BY language, key;

-- Verificar configurações do sistema
SELECT 
    key,
    value,
    type
FROM configurations
WHERE key LIKE '%language%' OR key LIKE '%locale%'
ORDER BY key;
