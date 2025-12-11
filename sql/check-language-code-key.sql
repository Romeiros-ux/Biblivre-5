-- Verificar se existe a chave 'language_code' nas traduções
SELECT key, language, text 
FROM translations 
WHERE key = 'language_code';
