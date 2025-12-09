-- Script para mover tabelas do schema 'global' para 'public'
-- Este script resolve o problema de conexão onde a aplicação não encontra as tabelas

-- 1. Listar todas as tabelas no schema global
DO $$
DECLARE
    r RECORD;
BEGIN
    -- Mover tabelas
    FOR r IN SELECT tablename FROM pg_tables WHERE schemaname = 'global'
    LOOP
        EXECUTE 'ALTER TABLE global.' || quote_ident(r.tablename) || ' SET SCHEMA public';
        RAISE NOTICE 'Moveu tabela: %', r.tablename;
    END LOOP;
    
    -- Mover sequências
    FOR r IN SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema = 'global'
    LOOP
        EXECUTE 'ALTER SEQUENCE global.' || quote_ident(r.sequence_name) || ' SET SCHEMA public';
        RAISE NOTICE 'Moveu sequência: %', r.sequence_name;
    END LOOP;
    
    -- Mover funções (com assinaturas completas)
    FOR r IN 
        SELECT 
            p.proname AS routine_name,
            pg_get_function_identity_arguments(p.oid) AS args
        FROM pg_proc p
        JOIN pg_namespace n ON p.pronamespace = n.oid
        WHERE n.nspname = 'global'
    LOOP
        BEGIN
            EXECUTE 'ALTER FUNCTION global.' || quote_ident(r.routine_name) || '(' || r.args || ') SET SCHEMA public';
            RAISE NOTICE 'Moveu função: %(%)' , r.routine_name, r.args;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE NOTICE 'Erro ao mover função %(%) - %', r.routine_name, r.args, SQLERRM;
        END;
    END LOOP;
END $$;

-- 2. Verificar se as tabelas foram movidas
SELECT 'Tabelas no schema public:' AS status, COUNT(*) AS quantidade
FROM pg_tables 
WHERE schemaname = 'public' 
  AND tablename LIKE '%versions%' 
  OR tablename LIKE '%translations%' 
  OR tablename LIKE '%configurations%';

-- 3. Verificar tabela versions especificamente
SELECT 'Tabela versions existe:' AS status, COUNT(*) AS existe
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'versions';
