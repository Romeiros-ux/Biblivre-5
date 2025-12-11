-- TESTE 4: Traduções essenciais
SELECT language, key, text 
FROM translations 
WHERE key IN ('language_code', 'language_name', 'login.access_denied')
ORDER BY language, key;
