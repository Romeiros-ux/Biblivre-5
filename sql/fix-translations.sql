-- Fix: Adicionar traduções essenciais que faltam no Supabase
-- Executar este script no Supabase SQL Editor

-- Verificar se language_code existe
SELECT * FROM translations WHERE key = 'language_code';

-- Se não existir, inserir as traduções de language_code
INSERT INTO translations (language, key, text, user_created, created)
VALUES 
    ('pt_BR', 'language_code', 'pt-BR', true, NOW()),
    ('en_US', 'language_code', 'en', true, NOW()),
    ('es', 'language_code', 'es', true, NOW())
ON CONFLICT (language, key) DO UPDATE 
SET text = EXCLUDED.text;

-- Verificar traduções de login essenciais
SELECT * FROM translations WHERE key LIKE 'login.%' ORDER BY key;

-- Se faltarem, inserir traduções de login
INSERT INTO translations (language, key, text, user_created, created)
VALUES 
    ('pt_BR', 'login.access_denied', 'Usuário ou senha inválidos', true, NOW()),
    ('en_US', 'login.access_denied', 'Invalid username or password', true, NOW()),
    ('es', 'login.access_denied', 'Usuario o contraseña no válidos', true, NOW())
ON CONFLICT (language, key) DO UPDATE 
SET text = EXCLUDED.text;

-- Verificar resultado
SELECT COUNT(*) as total_translations FROM translations;
SELECT language, COUNT(*) as count FROM translations GROUP BY language;
