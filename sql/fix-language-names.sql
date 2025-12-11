-- Fix: Adicionar traduções de language_name para cada idioma
-- O sistema busca idiomas através de translations.key = 'language_name'

INSERT INTO translations (language, key, text, user_created, created, modified)
VALUES 
    ('pt-BR', 'language_name', 'Português (Brasil)', false, NOW(), NOW()),
    ('en-US', 'language_name', 'English (US)', false, NOW(), NOW()),
    ('es', 'language_name', 'Español', false, NOW(), NOW())
ON CONFLICT (language, key) DO UPDATE 
SET text = EXCLUDED.text,
    modified = NOW();

-- Verificar resultado
SELECT language, key, text 
FROM translations 
WHERE key = 'language_name' 
ORDER BY language;
