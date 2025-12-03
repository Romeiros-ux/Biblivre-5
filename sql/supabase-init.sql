-- Script adaptado para Supabase
-- Execute este script no SQL Editor do Supabase

-- Nota: O Supabase já tem um database 'postgres' e um usuário 'postgres'
-- Portanto, não precisamos criar o database ou o usuário

-- Criar o schema global
CREATE SCHEMA IF NOT EXISTS global;

-- Garantir permissões
GRANT ALL ON SCHEMA global TO postgres;
GRANT ALL ON SCHEMA public TO postgres;

-- Configurar o search_path padrão
ALTER DATABASE postgres SET search_path TO global, public, pg_catalog;

-- Mensagem de confirmação
DO $$
BEGIN
    RAISE NOTICE 'Schemas criados com sucesso! Agora execute o script biblivre4.sql';
END $$;
