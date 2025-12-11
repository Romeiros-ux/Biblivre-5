-- SCRIPT COMPLETO DE DIAGNÓSTICO E CORREÇÃO
-- Execute este script no Supabase SQL Editor

-- 1. VERIFICAR TABELA SCHEMAS
SELECT 'Verificando tabela schemas:' as info;
SELECT * FROM schemas;

-- Se não existir ou estiver vazia, criar/inserir:
CREATE TABLE IF NOT EXISTS schemas (
    schema TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    created TIMESTAMP DEFAULT NOW(),
    created_by INTEGER,
    modified TIMESTAMP DEFAULT NOW(),
    modified_by INTEGER,
    disabled BOOLEAN DEFAULT FALSE
);

INSERT INTO schemas (schema, name, created, created_by, modified, modified_by, disabled)
VALUES ('biblivre4', 'Biblivre 4', NOW(), 1, NOW(), 1, false)
ON CONFLICT (schema) DO UPDATE
SET disabled = false;

-- 2. VERIFICAR CONFIGURAÇÕES
SELECT 'Verificando configurações:' as info;
SELECT * FROM configurations LIMIT 10;

-- Se não existir tabela configurations, criar:
CREATE TABLE IF NOT EXISTS configurations (
    key TEXT PRIMARY KEY,
    value TEXT,
    type TEXT,
    required BOOLEAN DEFAULT FALSE,
    modified TIMESTAMP DEFAULT NOW(),
    modified_by INTEGER
);

-- Inserir configurações essenciais:
INSERT INTO configurations (key, value, type, required)
VALUES 
    ('general.title', 'Biblivre IV', 'string', false),
    ('general.subtitle', 'Sistema de Automação de Bibliotecas', 'string', false),
    ('general.language', 'pt-BR', 'string', false),
    ('currency', 'R$', 'string', false)
ON CONFLICT (key) DO NOTHING;

-- 3. VERIFICAR TRADUÇÕES ESSENCIAIS
SELECT 'Verificando traduções essenciais:' as info;
SELECT language, key, text FROM translations 
WHERE key IN ('language_code', 'language_name', 'login.access_denied')
ORDER BY language, key;

-- 4. VERIFICAR VERSÕES (tabela de controle de updates)
SELECT 'Verificando tabela versions:' as info;
SELECT * FROM versions;

-- Se não existir, criar:
CREATE TABLE IF NOT EXISTS versions (
    schema TEXT,
    installed_versions TEXT,
    PRIMARY KEY (schema)
);

INSERT INTO versions (schema, installed_versions)
VALUES ('biblivre4', '4.0.0,4.1.0,4.1.1,4.1.2,4.1.3,4.1.4,4.1.5,4.1.6,4.1.7,4.1.8')
ON CONFLICT (schema) DO UPDATE
SET installed_versions = '4.0.0,4.1.0,4.1.1,4.1.2,4.1.3,4.1.4,4.1.5,4.1.6,4.1.7,4.1.8';

-- 5. VERIFICAR USUÁRIOS
SELECT 'Verificando usuários:' as info;
SELECT id, login, name, status FROM users WHERE login = 'admin';

-- Se não existir tabela users, criar:
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    login TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    name TEXT,
    status TEXT DEFAULT 'active',
    type TEXT DEFAULT 'admin',
    created TIMESTAMP DEFAULT NOW(),
    created_by INTEGER,
    modified TIMESTAMP DEFAULT NOW(),
    modified_by INTEGER
);

-- Inserir admin se não existir (senha: admin em MD5)
INSERT INTO users (id, login, password, name, status, type, created, modified)
VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrador', 'active', 'admin', NOW(), NOW())
ON CONFLICT (login) DO NOTHING;

-- Resetar sequence se necessário
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));

-- 6. RESUMO FINAL
SELECT 'RESUMO - Configuração do banco:' as info;
SELECT 
    'Schemas' as tabela,
    COUNT(*) as registros
FROM schemas
UNION ALL
SELECT 
    'Configurations',
    COUNT(*)
FROM configurations
UNION ALL
SELECT 
    'Translations',
    COUNT(*)
FROM translations
UNION ALL
SELECT 
    'Users',
    COUNT(*)
FROM users
UNION ALL
SELECT 
    'Versions',
    COUNT(*)
FROM versions;
