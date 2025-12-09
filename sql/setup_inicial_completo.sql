-- Setup Inicial Completo do Biblivre 5
-- Este script prepara o banco para o primeiro uso

-- 1. Criar tabela de configurações se não existir
CREATE TABLE IF NOT EXISTS configurations (
    key character varying NOT NULL,
    value character varying,
    type character varying,
    required boolean DEFAULT false,
    modified timestamp without time zone DEFAULT now(),
    modified_by integer,
    PRIMARY KEY (key)
);

-- 2. Inserir configurações básicas
INSERT INTO configurations (key, value, type, required) VALUES
    ('general.title', 'Biblivre V', 'string', true),
    ('general.subtitle', 'Sistema de Gerenciamento de Bibliotecas', 'string', false),
    ('language', 'pt-BR', 'string', true),
    ('currency', 'R$', 'string', true)
ON CONFLICT (key) DO NOTHING;

-- 3. Garantir que a tabela schemas existe
CREATE TABLE IF NOT EXISTS schemas (
    schema character varying NOT NULL PRIMARY KEY,
    name character varying,
    disabled boolean NOT NULL DEFAULT false
);

-- 4. Inserir schema biblivre4 se não existir
INSERT INTO schemas (schema, name, disabled) 
VALUES ('biblivre4', 'Biblivre 4', false)
ON CONFLICT (schema) DO NOTHING;

-- 5. Criar tabela versions para controle de versão
CREATE TABLE IF NOT EXISTS versions (
    installed_versions character varying NOT NULL PRIMARY KEY
);

-- 6. Inserir versão atual
INSERT INTO versions (installed_versions) VALUES ('5.0.0')
ON CONFLICT (installed_versions) DO NOTHING;

-- 7. Verificar tabelas criadas
SELECT 'Setup concluído! Tabelas criadas:' as status;
SELECT tablename FROM pg_tables WHERE schemaname = 'public' AND tablename IN ('configurations', 'schemas', 'versions', 'translations') ORDER BY tablename;
