-- Fix: Verificar e corrigir tabela languages no Supabase

-- 1. Verificar se a tabela languages existe e tem dados
SELECT * FROM languages ORDER BY language;

-- Se estiver vazia ou com dados errados, inserir:
INSERT INTO languages (language, name) 
VALUES 
    ('pt-BR', 'Português (Brasil)'),
    ('en-US', 'English (US)'),
    ('es', 'Español')
ON CONFLICT (language) DO UPDATE 
SET name = EXCLUDED.name;

-- 2. Verificar configurações do schema biblivre4
SELECT * FROM configurations WHERE key LIKE '%language%';

-- 3. Se não existir configuração de idioma padrão, adicionar:
INSERT INTO configurations (key, value, type)
VALUES ('general.language', 'pt-BR', 'string')
ON CONFLICT (key) DO UPDATE
SET value = 'pt-BR';

-- 4. Verificar resultado
SELECT 'Languages:' as info;
SELECT * FROM languages;

SELECT 'Default Language Config:' as info;
SELECT * FROM configurations WHERE key = 'general.language';
