-- Mover tabelas do schema 'biblivre4' para 'public'
DO $$
DECLARE
    r RECORD;
BEGIN
    -- Mover tabelas
    FOR r IN SELECT tablename FROM pg_tables WHERE schemaname = 'biblivre4'
    LOOP
        BEGIN
            EXECUTE 'ALTER TABLE biblivre4.' || quote_ident(r.tablename) || ' SET SCHEMA public';
            RAISE NOTICE 'Moveu tabela: %', r.tablename;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE NOTICE 'Erro ao mover tabela % - %', r.tablename, SQLERRM;
        END;
    END LOOP;
    
    -- Mover sequências
    FOR r IN SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema = 'biblivre4'
    LOOP
        BEGIN
            EXECUTE 'ALTER SEQUENCE biblivre4.' || quote_ident(r.sequence_name) || ' SET SCHEMA public';
            RAISE NOTICE 'Moveu sequência: %', r.sequence_name;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE NOTICE 'Erro ao mover sequência % - %', r.sequence_name, SQLERRM;
        END;
    END LOOP;
END $$;

-- Verificar resultado
SELECT 'Tabelas movidas para PUBLIC:' AS status, COUNT(*) AS quantidade
FROM pg_tables 
WHERE schemaname = 'public'
  AND tablename IN ('versions', 'translations', 'configurations');

SELECT 'Verificação final - tabela versions:' AS status;
SELECT schemaname, tablename 
FROM pg_tables 
WHERE tablename = 'versions';
