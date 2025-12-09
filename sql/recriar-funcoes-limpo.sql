-- Listar todas as versões da função update_translation
SELECT 
    p.proname AS function_name,
    pg_get_function_identity_arguments(p.oid) AS arguments,
    n.nspname AS schema,
    pg_get_functiondef(p.oid) AS definition
FROM pg_proc p
JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE p.proname IN ('update_translation', 'update_user_value')
ORDER BY n.nspname, p.proname;

-- Dropar todas as versões antigas
DROP FUNCTION IF EXISTS update_translation(character varying, character varying, character varying, integer) CASCADE;
DROP FUNCTION IF EXISTS update_user_value(integer, character varying, character varying, character varying) CASCADE;

-- Recriar as funções corretamente
CREATE OR REPLACE FUNCTION update_translation(
    p_language character varying,
    p_key character varying,
    p_text character varying,
    p_user_id integer
)
RETURNS integer AS $$
DECLARE
    v_current_value TEXT;
BEGIN
    -- Get the current value for this key
    SELECT text INTO v_current_value FROM translations
    WHERE language = p_language AND key = p_key;

    -- If value doesn't exist, insert it
    IF v_current_value IS NULL THEN
        INSERT INTO translations (language, key, text, user_created, created_by, modified_by)
        VALUES (p_language, p_key, p_text, true, p_user_id, p_user_id);
        RETURN 1;
    END IF;

    -- If value is different, update it
    IF v_current_value <> p_text THEN
        UPDATE translations 
        SET text = p_text, modified_by = p_user_id, modified = now()
        WHERE language = p_language AND key = p_key;
        RETURN 1;
    END IF;

    RETURN 0;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_user_value(
    p_user_id integer,
    p_key character varying,
    p_value character varying,
    p_ascii_value character varying
)
RETURNS integer AS $$
DECLARE
    v_current_value TEXT;
BEGIN
    -- Get the current value for this key
    SELECT value INTO v_current_value FROM user_fields
    WHERE user_id = p_user_id AND key = p_key;

    -- If value doesn't exist, insert it
    IF v_current_value IS NULL THEN
        INSERT INTO user_fields (user_id, key, value, ascii_value)
        VALUES (p_user_id, p_key, p_value, p_ascii_value);
        RETURN 1;
    END IF;

    -- If value is different, update it
    IF v_current_value <> p_value THEN
        UPDATE user_fields 
        SET value = p_value, ascii_value = p_ascii_value
        WHERE user_id = p_user_id AND key = p_key;
        RETURN 1;
    END IF;

    RETURN 0;
END;
$$ LANGUAGE plpgsql;

-- Verificar
SELECT 'Funções recriadas com sucesso' AS status;
SELECT routine_name, routine_schema 
FROM information_schema.routines 
WHERE routine_name IN ('update_translation', 'update_user_value')
  AND routine_schema = 'public';
