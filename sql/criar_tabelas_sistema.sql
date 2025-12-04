-- CRIAR ESTRUTURAS NECESSÁRIAS PARA O BIBLIVRE INICIALIZAR
-- Execute no Supabase SQL Editor

-- 1. Criar tabela versions (armazena versões instaladas)
CREATE TABLE IF NOT EXISTS global.versions (
    version VARCHAR(20) NOT NULL PRIMARY KEY,
    installed TIMESTAMP NOT NULL DEFAULT LOCALTIMESTAMP
);

-- 2. Inserir versões base (para evitar updates desnecessários)
INSERT INTO global.versions (version, installed) VALUES
    ('4.0.0b', CURRENT_TIMESTAMP),
    ('4.0.1b', CURRENT_TIMESTAMP),
    ('4.0.2b', CURRENT_TIMESTAMP),
    ('4.0.3b', CURRENT_TIMESTAMP),
    ('4.0.4b', CURRENT_TIMESTAMP),
    ('4.0.5b', CURRENT_TIMESTAMP),
    ('4.0.6b', CURRENT_TIMESTAMP),
    ('4.0.7b', CURRENT_TIMESTAMP),
    ('4.0.8b', CURRENT_TIMESTAMP),
    ('4.0.9b', CURRENT_TIMESTAMP),
    ('4.0.10b', CURRENT_TIMESTAMP),
    ('4.0.11b', CURRENT_TIMESTAMP),
    ('4.0.12b', CURRENT_TIMESTAMP),
    ('5.0.0', CURRENT_TIMESTAMP),
    ('5.0.1', CURRENT_TIMESTAMP),
    ('5.0.2', CURRENT_TIMESTAMP),
    ('5.0.3', CURRENT_TIMESTAMP),
    ('5.0.4', CURRENT_TIMESTAMP),
    ('5.0.5', CURRENT_TIMESTAMP)
ON CONFLICT (version) DO NOTHING;

-- 3. Criar tabela backups (se não existir)
CREATE TABLE IF NOT EXISTS global.backups (
    id SERIAL PRIMARY KEY,
    created TIMESTAMP NOT NULL DEFAULT LOCALTIMESTAMP,
    path TEXT,
    schemas TEXT,
    type VARCHAR(50),
    scope VARCHAR(50),
    downloaded BOOLEAN DEFAULT FALSE,
    steps INTEGER DEFAULT 0,
    current_step INTEGER DEFAULT 0
);

-- 4. Verificar resultado
SELECT 'versions' as tabela, COUNT(*) as registros FROM global.versions
UNION ALL
SELECT 'backups', COUNT(*) FROM global.backups;
