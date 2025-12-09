-- Mover funções do schema 'global' para 'public'
DO $$
DECLARE
    r RECORD;
BEGIN
    -- Mover funções com assinaturas completas
    FOR r IN 
        SELECT 
            p.proname AS function_name,
            pg_get_function_identity_arguments(p.oid) AS args
        FROM pg_proc p
        JOIN pg_namespace n ON p.pronamespace = n.oid
        WHERE n.nspname = 'global'
    LOOP
        BEGIN
            EXECUTE 'ALTER FUNCTION global.' || quote_ident(r.function_name) || '(' || r.args || ') SET SCHEMA public';
            RAISE NOTICE 'Moveu função: %(%)' , r.function_name, r.args;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE NOTICE 'Erro ao mover função %(%) - %', r.function_name, r.args, SQLERRM;
        END;
    END LOOP;
END $$;

-- Verificar funções movidas
SELECT 'Funções no schema PUBLIC:' AS status, COUNT(*) AS quantidade
FROM pg_proc p
JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE n.nspname = 'public'
  AND p.proname LIKE '%translation%';

SELECT 'Funções restantes no schema GLOBAL:' AS status, COUNT(*) AS quantidade
FROM pg_proc p
JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE n.nspname = 'global';
