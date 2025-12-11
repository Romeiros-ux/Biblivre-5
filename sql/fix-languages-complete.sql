-- Script completo de verificação e correção do sistema de idiomas
-- Execute no Supabase SQL Editor

-- 1. CRIAR tabela languages se não existir
CREATE TABLE IF NOT EXISTS languages (
    language VARCHAR(10) NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. Inserir idiomas
INSERT INTO languages (language, name) 
VALUES 
    ('pt-BR', 'Português (Brasil)'),
    ('en-US', 'English (US)'),
    ('es', 'Español')
ON CONFLICT (language) DO UPDATE 
SET name = EXCLUDED.name;

-- 3. Verificar dados inseridos
SELECT * FROM languages ORDER BY language;

-- 4. Verificar configuração de idioma padrão
SELECT * FROM configurations WHERE key LIKE '%language%';
