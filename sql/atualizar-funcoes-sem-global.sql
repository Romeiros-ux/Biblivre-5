-- Recriar função update_translation sem referências ao schema global

CREATE OR REPLACE FUNCTION update_translation(
    p_language character varying,
    p_key character varying,
    p_text character varying,
    p_user_id integer
)
RETURNS integer AS $$
DECLARE
    v_schema character varying;
    v_current_value TEXT;
BEGIN
    v_schema = current_schema();
    
    -- Get the current value for this key
    SELECT INTO v_current_value text FROM translations
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

-- Recriar função update_user_value sem referências ao schema global

CREATE OR REPLACE FUNCTION update_user_value(
    p_user_id integer,
    p_key character varying,
    p_value character varying,
    p_ascii_value character varying
)
RETURNS integer AS $$
DECLARE
    v_schema character varying;
    v_current_value TEXT;
BEGIN
    v_schema = current_schema();
    
    -- Get the current value for this key
    SELECT INTO v_current_value value FROM user_fields
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

-- Verificar funções
SELECT 'Função update_translation atualizada' AS status;
SELECT routine_name, routine_schema 
FROM information_schema.routines 
WHERE routine_name IN ('update_translation', 'update_user_value')
  AND routine_schema = 'public';
