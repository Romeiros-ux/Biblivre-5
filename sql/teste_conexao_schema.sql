-- TESTE DE CONEXÃO JDBC COM currentSchema=global
-- Execute no Supabase SQL Editor

-- 1. Verificar schema atual da sessão
SELECT current_schema();
-- Esperado: public (padrão)

-- 2. Testar se currentSchema funciona criando uma conexão temporária
-- Simular o que o JDBC faz ao conectar com currentSchema=global
SET search_path TO global, public, pg_catalog;

-- 3. Agora tentar acessar tabelas sem qualificar o schema
SELECT COUNT(*) as total_translations FROM translations;
SELECT COUNT(*) as total_logins FROM logins;
SELECT COUNT(*) as total_configs FROM configurations;

-- 4. Verificar se tabela 'versions' existe (ela é criada pelo Updates.globalUpdate())
SELECT COUNT(*) 
FROM information_schema.tables 
WHERE table_schema = 'global' 
  AND table_name = 'versions';
-- Se retornar 0, a tabela não existe ainda

-- 5. Se versions não existe, criar manualmente para testar
CREATE TABLE IF NOT EXISTS global.versions (
    version VARCHAR(20) NOT NULL PRIMARY KEY,
    installed TIMESTAMP NOT NULL DEFAULT LOCALTIMESTAMP
);

-- 6. Inserir versão de teste
INSERT INTO global.versions (version) 
VALUES ('4.0.0b') 
ON CONFLICT (version) DO NOTHING;

-- 7. Verificar se funcionou
SELECT * FROM global.versions ORDER BY installed DESC;
