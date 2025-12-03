-- Estrutura completa do banco de dados Biblivre
-- IMPORTANTE: Execute este arquivo COMPLETO antes dos arquivos de dados

-- Criar schema global
CREATE SCHEMA IF NOT EXISTS global;
SET search_path = global, pg_catalog;

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

CREATE FUNCTION unlink() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	PERFORM pg_catalog.lo_unlink(OLD.blob);
	RETURN OLD;
EXCEPTION WHEN OTHERS THEN
	RETURN OLD;
END;
$$;

CREATE FUNCTION clear_record() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_fields WHERE record_id = ' || OLD.id;
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_sort WHERE record_id = ' || OLD.id;
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_search_results WHERE record_id = ' || OLD.id;

	RETURN NULL;
END;
$$;

CREATE FUNCTION clear_indexing_type() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_fields WHERE indexing_group_id = ' || OLD.id;
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_sort WHERE indexing_group_id = ' || OLD.id;

	RETURN NULL;
END;
$$;

CREATE FUNCTION update_translation(character varying, character varying, character varying, integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
DECLARE
	p_language ALIAS FOR $1;
	p_key ALIAS FOR $2;
	p_text ALIAS FOR $3;
	p_user ALIAS FOR $4;

	v_schema character varying;
	v_current_value TEXT;
	v_global_value TEXT;
	v_user_created BOOLEAN;
	v_query_string character varying;
BEGIN
	v_schema = current_schema();

	IF v_schema <> 'global' THEN
		-- Get the global value for this key
		SELECT INTO v_global_value text FROM global.translations
		WHERE language = p_language AND key = p_key;

		-- If the new text is the same as the global one,
		-- delete it from the current schema
		IF v_global_value = p_text THEN
			-- Fix for unqualified schema in functions
			EXECUTE 'DELETE FROM ' || pg_catalog.quote_ident(v_schema) || '.translations WHERE language = ' || pg_catalog.quote_literal(p_language) || ' AND key = ' || pg_catalog.quote_literal(p_key);
			RETURN 1;
		END IF;
	END IF;

	-- Get the current value for this key
	EXECUTE 'SELECT text FROM ' || pg_catalog.quote_ident(v_schema) || '.translations WHERE language = ' || pg_catalog.quote_literal(p_language) || ' AND key = ' || pg_catalog.quote_literal(p_key) INTO v_current_value;

	-- If the new text is the same as the current one, return
	IF v_current_value = p_text THEN
		RETURN 2;
	END IF;

	-- If the new key isn't available in the global schema,
	-- then this is a user_created key
	v_user_created = v_schema <> 'global' AND v_global_value IS NULL;

	-- If the current value is null then there is no
	-- current translation for this key, then we should insert it
	IF v_current_value IS NULL THEN
		EXECUTE 'INSERT INTO ' || pg_catalog.quote_ident(v_schema) || '.translations (language, key, text, created_by, modified_by, user_created) VALUES (' || pg_catalog.quote_literal(p_language) || ', ' || pg_catalog.quote_literal(p_key) || ', ' || pg_catalog.quote_literal(p_text) || ', ' || pg_catalog.quote_literal(p_user) || ', ' || pg_catalog.quote_literal(p_user) || ', ' || pg_catalog.quote_literal(v_user_created) || ');';
		RETURN 3;
	ELSE
		EXECUTE 'UPDATE ' || pg_catalog.quote_ident(v_schema) || '.translations SET text = ' || pg_catalog.quote_literal(p_text) || ', modified = now(), modified_by = ' || pg_catalog.quote_literal(p_user) || ' WHERE language = ' || pg_catalog.quote_literal(p_language) || ' AND key = ' || pg_catalog.quote_literal(p_key);
		RETURN 4;
	END IF;
END;
$_$;

CREATE FUNCTION update_user_value(integer, character varying, character varying, character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
DECLARE
	p_id ALIAS FOR $1;
	p_key ALIAS FOR $2;
	p_value ALIAS FOR $3;
	p_ascii ALIAS FOR $4;

	v_schema character varying;
	v_current_value TEXT;
BEGIN
	v_schema = current_schema();

	IF v_schema = 'global' THEN
		-- Can't save user fields in global schema
		RETURN 1;
	END IF;

	-- Get the current value for this key
	EXECUTE 'SELECT value FROM ' || pg_catalog.quote_ident(v_schema) || '.users_values WHERE user_id = ' || pg_catalog.quote_literal(p_id) || ' AND key = ' || pg_catalog.quote_literal(p_key) INTO v_current_value;

	-- If the new value is the same as the current one, return
	IF v_current_value = p_value THEN
		RETURN 2;
	END IF;

	-- If the current value is null then there is no
	-- current value for this key, then we should insert it
	IF v_current_value IS NULL THEN
		EXECUTE 'INSERT INTO ' || pg_catalog.quote_ident(v_schema) || '.users_values (user_id, key, value, ascii) VALUES (' || pg_catalog.quote_literal(p_id) || ', ' || pg_catalog.quote_literal(p_key) || ', ' || pg_catalog.quote_literal(p_value) || ', ' || pg_catalog.quote_literal(p_ascii) || ');';
		RETURN 3;
	ELSE
		EXECUTE 'UPDATE ' || pg_catalog.quote_ident(v_schema) || '.users_values SET value = ' || pg_catalog.quote_literal(p_value) || ', ascii = ' || pg_catalog.quote_literal(p_ascii) || ' WHERE user_id = ' || pg_catalog.quote_literal(p_id) || ' AND key = ' || pg_catalog.quote_literal(p_key);
		RETURN 4;
	END IF;
END;
$_$;

CREATE SEQUENCE access_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE access_cards (
    id integer DEFAULT nextval('access_cards_id_seq'::regclass) NOT NULL,
    code character varying NOT NULL,
    status character varying NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE access_control_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE access_control (
    id integer DEFAULT nextval('access_control_id_seq'::regclass) NOT NULL,
    access_card_id integer NOT NULL,
    user_id integer NOT NULL,
    arrival_time timestamp without time zone DEFAULT now() NOT NULL,
    departure_time timestamp without time zone,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE authorities_brief_formats (
    datafield character(3) NOT NULL,
    format text NOT NULL,
    sort_order integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE authorities_form_datafields (
    datafield character(3) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    indicator_1 character varying,
    indicator_2 character varying,
    material_type character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE authorities_form_subfields (
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);

CREATE TABLE authorities_idx_autocomplete (
    id integer NOT NULL,
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    word character varying NOT NULL,
    phrase character varying NOT NULL,
    record_id integer
);

CREATE SEQUENCE authorities_idx_autocomplete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE authorities_idx_autocomplete_id_seq OWNED BY authorities_idx_autocomplete.id;

CREATE TABLE authorities_idx_fields (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    word character varying NOT NULL,
    datafield integer NOT NULL
);

CREATE TABLE authorities_idx_sort (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    phrase character varying,
    ignore_chars_count integer
);

CREATE TABLE authorities_indexing_groups (
    id integer NOT NULL,
    translation_key character varying NOT NULL,
    datafields text,
    sortable boolean DEFAULT false NOT NULL,
    default_sort boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE authorities_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE authorities_indexing_groups_id_seq OWNED BY authorities_indexing_groups.id;

CREATE TABLE authorities_records (
    id integer NOT NULL,
    iso2709 text NOT NULL,
    material character varying(20),
    database character varying(10) DEFAULT 'main'::character varying NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE authorities_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE authorities_records_id_seq OWNED BY authorities_records.id;

CREATE TABLE authorities_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);

CREATE TABLE authorities_searches (
    id integer NOT NULL,
    parameters text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE authorities_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE authorities_searches_id_seq OWNED BY authorities_searches.id;

CREATE TABLE backups (
    id integer NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    path character varying,
    schemas character varying NOT NULL,
    type character varying NOT NULL,
    scope character varying NOT NULL,
    downloaded boolean DEFAULT false NOT NULL,
    steps integer,
    current_step integer
);

CREATE SEQUENCE backups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE backups_id_seq OWNED BY backups.id;

CREATE TABLE biblio_brief_formats (
    datafield character(3) NOT NULL,
    format text NOT NULL,
    sort_order integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE biblio_form_datafields (
    datafield character(3) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    indicator_1 character varying,
    indicator_2 character varying,
    material_type character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE biblio_form_subfields (
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);

CREATE TABLE biblio_holdings (
    id integer NOT NULL,
    record_id integer NOT NULL,
    iso2709 text NOT NULL,
    database character varying(10) DEFAULT 'main'::character varying NOT NULL,
    accession_number character varying NOT NULL,
    location_d character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    material character varying(20),
    availability character varying DEFAULT 'available'::character varying NOT NULL,
    label_printed boolean DEFAULT false
);

CREATE SEQUENCE biblio_holdings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_holdings_id_seq OWNED BY biblio_holdings.id;

CREATE TABLE biblio_idx_autocomplete (
    id integer NOT NULL,
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    word character varying NOT NULL,
    phrase character varying NOT NULL,
    record_id integer
);

CREATE SEQUENCE biblio_idx_autocomplete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_idx_autocomplete_id_seq OWNED BY biblio_idx_autocomplete.id;

CREATE TABLE biblio_idx_fields (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    word character varying NOT NULL,
    datafield integer NOT NULL
);

CREATE TABLE biblio_idx_sort (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    phrase character varying,
    ignore_chars_count integer
);

CREATE TABLE biblio_indexing_groups (
    id integer NOT NULL,
    translation_key character varying NOT NULL,
    datafields text,
    sortable boolean DEFAULT false NOT NULL,
    default_sort boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE biblio_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_indexing_groups_id_seq OWNED BY biblio_indexing_groups.id;

CREATE TABLE biblio_records (
    id integer NOT NULL,
    iso2709 text NOT NULL,
    material character varying(20),
    database character varying(10) DEFAULT 'main'::character varying NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE biblio_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_records_id_seq OWNED BY biblio_records.id;

CREATE TABLE biblio_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);

CREATE TABLE biblio_searches (
    id integer NOT NULL,
    parameters text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE biblio_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE biblio_searches_id_seq OWNED BY biblio_searches.id;

CREATE TABLE configurations (
    key character varying NOT NULL,
    value character varying NOT NULL,
    type character varying DEFAULT 'string'::character varying NOT NULL,
    required boolean DEFAULT false NOT NULL,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE digital_media (
    id integer NOT NULL,
    name character varying,
    blob oid NOT NULL,
    content_type character varying,
    size bigint,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE digital_media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE digital_media_id_seq OWNED BY digital_media.id;

CREATE TABLE holding_creation_counter (
    id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    user_login character varying(100),
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer NOT NULL
);

CREATE SEQUENCE holding_creation_counter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE holding_creation_counter_id_seq OWNED BY holding_creation_counter.id;

CREATE TABLE holding_form_datafields (
    datafield character(3) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    indicator_1 character varying,
    indicator_2 character varying,
    material_type character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE holding_form_subfields (
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);

CREATE TABLE lending_fines (
    id integer NOT NULL,
    lending_id integer NOT NULL,
    user_id integer NOT NULL,
    fine_value real NOT NULL,
    payment_date timestamp without time zone,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE lending_fines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE lending_fines_id_seq OWNED BY lending_fines.id;

CREATE TABLE lendings (
    id integer NOT NULL,
    holding_id integer NOT NULL,
    user_id integer NOT NULL,
    previous_lending_id integer,
    expected_return_date timestamp without time zone,
    return_date timestamp without time zone,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE lendings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE lendings_id_seq OWNED BY lendings.id;

CREATE TABLE logins (
    id integer NOT NULL,
    login character varying NOT NULL,
    employee boolean DEFAULT false NOT NULL,
    password text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE logins_id_seq OWNED BY logins.id;

CREATE TABLE orders (
    id integer NOT NULL,
    info text,
    status character varying,
    invoice_number character varying,
    receipt_date timestamp without time zone DEFAULT now(),
    total_value numeric,
    delivered_quantity integer,
    terms_of_payment character varying,
    deadline_date timestamp without time zone DEFAULT now() NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    quotation_id integer NOT NULL
);

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;

CREATE TABLE permissions (
    login_id integer NOT NULL,
    permission character varying(80) NOT NULL
);

CREATE SEQUENCE quotations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE quotations (
    id integer DEFAULT nextval('quotations_id_seq'::regclass) NOT NULL,
    supplier_id integer NOT NULL,
    response_date timestamp without time zone,
    expiration_date timestamp without time zone,
    delivery_time integer,
    info text,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE request_quotation (
    request_id integer NOT NULL,
    quotation_id integer NOT NULL,
    quotation_quantity integer,
    unit_value numeric,
    response_quantity integer
);

CREATE TABLE requests (
    id integer DEFAULT nextval('request_id_seq'::regclass) NOT NULL,
    requester character varying,
    author character varying,
    item_title character varying,
    item_subtitle character varying,
    edition_number character varying,
    publisher character varying,
    info text,
    status character varying,
    quantity integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE reservations (
    id integer NOT NULL,
    record_id integer NOT NULL,
    user_id integer NOT NULL,
    expires timestamp without time zone,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE reservations_id_seq OWNED BY reservations.id;

CREATE SEQUENCE supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE suppliers (
    id integer DEFAULT nextval('supplier_id_seq'::regclass) NOT NULL,
    trademark character varying NOT NULL,
    supplier_name character varying,
    supplier_number character varying NOT NULL,
    vat_registration_number character varying,
    address character varying,
    address_number character varying,
    address_complement character varying,
    area character varying,
    city character varying,
    state character varying,
    country character varying,
    zip_code character varying,
    telephone_1 character varying,
    telephone_2 character varying,
    telephone_3 character varying,
    telephone_4 character varying,
    contact_1 character varying,
    contact_2 character varying,
    contact_3 character varying,
    contact_4 character varying,
    info character varying,
    url character varying,
    email character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE translations (
    language character varying NOT NULL,
    key character varying NOT NULL,
    text text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_created boolean DEFAULT false NOT NULL
);

CREATE TABLE users (
    id integer NOT NULL,
    name character varying NOT NULL,
    type integer,
    photo_id character varying,
    status character varying NOT NULL,
    login_id integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_card_printed boolean DEFAULT false,
	name_ascii character varying
);

CREATE TABLE users_fields (
    key character varying NOT NULL,
    type character varying NOT NULL,
    required boolean DEFAULT false NOT NULL,
    max_length integer DEFAULT 0 NOT NULL,
    sort_order integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE users_id_seq OWNED BY users.id;

CREATE TABLE users_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    lending_limit integer,
    reservation_limit integer,
    lending_time_limit integer,
    reservation_time_limit integer,
    fine_value real DEFAULT 0.00 NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE users_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE users_types_id_seq OWNED BY users_types.id;

CREATE TABLE users_values (
    user_id integer NOT NULL,
    key character varying NOT NULL,
    value character varying NOT NULL,
    ascii character varying
);

CREATE TABLE vocabulary_brief_formats (
    datafield character(3) NOT NULL,
    format text NOT NULL,
    sort_order integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE vocabulary_form_datafields (
    datafield character(3) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    indicator_1 character varying,
    indicator_2 character varying,
    material_type character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE TABLE vocabulary_form_subfields (
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    collapsed boolean DEFAULT false NOT NULL,
    repeatable boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);

CREATE TABLE vocabulary_idx_autocomplete (
    id integer NOT NULL,
    datafield character(3) NOT NULL,
    subfield character(1) NOT NULL,
    word character varying NOT NULL,
    phrase character varying NOT NULL,
    record_id integer
);

CREATE SEQUENCE vocabulary_idx_autocomplete_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vocabulary_idx_autocomplete_id_seq OWNED BY vocabulary_idx_autocomplete.id;

CREATE TABLE vocabulary_idx_fields (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    word character varying NOT NULL,
    datafield integer NOT NULL
);

CREATE TABLE vocabulary_idx_sort (
    record_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    phrase character varying,
    ignore_chars_count integer
);

CREATE TABLE vocabulary_indexing_groups (
    id integer NOT NULL,
    translation_key character varying NOT NULL,
    datafields text,
    sortable boolean DEFAULT false NOT NULL,
    default_sort boolean DEFAULT false NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE vocabulary_indexing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vocabulary_indexing_groups_id_seq OWNED BY vocabulary_indexing_groups.id;

CREATE TABLE vocabulary_records (
    id integer NOT NULL,
    iso2709 text NOT NULL,
    material character varying(20),
    database character varying(10) DEFAULT 'main'::character varying NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

CREATE SEQUENCE vocabulary_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vocabulary_records_id_seq OWNED BY vocabulary_records.id;

CREATE TABLE vocabulary_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);

CREATE TABLE vocabulary_searches (
    id integer NOT NULL,
    parameters text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer
);

CREATE SEQUENCE vocabulary_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE vocabulary_searches_id_seq OWNED BY vocabulary_searches.id;

CREATE TABLE z3950_addresses (
    id integer NOT NULL,
    name character varying NOT NULL,
    url character varying NOT NULL,
    port integer NOT NULL,
    collection character varying DEFAULT 'default'::character varying NOT NULL
);

CREATE SEQUENCE z3950_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE z3950_addresses_id_seq OWNED BY z3950_addresses.id;

ALTER TABLE ONLY authorities_idx_autocomplete ALTER COLUMN id SET DEFAULT nextval('authorities_idx_autocomplete_id_seq'::regclass);

ALTER TABLE ONLY authorities_indexing_groups ALTER COLUMN id SET DEFAULT nextval('authorities_indexing_groups_id_seq'::regclass);

ALTER TABLE ONLY authorities_records ALTER COLUMN id SET DEFAULT nextval('authorities_records_id_seq'::regclass);

ALTER TABLE ONLY authorities_searches ALTER COLUMN id SET DEFAULT nextval('authorities_searches_id_seq'::regclass);

ALTER TABLE ONLY backups ALTER COLUMN id SET DEFAULT nextval('backups_id_seq'::regclass);

ALTER TABLE ONLY biblio_holdings ALTER COLUMN id SET DEFAULT nextval('biblio_holdings_id_seq'::regclass);

ALTER TABLE ONLY biblio_idx_autocomplete ALTER COLUMN id SET DEFAULT nextval('biblio_idx_autocomplete_id_seq'::regclass);

ALTER TABLE ONLY biblio_indexing_groups ALTER COLUMN id SET DEFAULT nextval('biblio_indexing_groups_id_seq'::regclass);

ALTER TABLE ONLY biblio_records ALTER COLUMN id SET DEFAULT nextval('biblio_records_id_seq'::regclass);

ALTER TABLE ONLY biblio_searches ALTER COLUMN id SET DEFAULT nextval('biblio_searches_id_seq'::regclass);

ALTER TABLE ONLY digital_media ALTER COLUMN id SET DEFAULT nextval('digital_media_id_seq'::regclass);

ALTER TABLE ONLY holding_creation_counter ALTER COLUMN id SET DEFAULT nextval('holding_creation_counter_id_seq'::regclass);

ALTER TABLE ONLY lending_fines ALTER COLUMN id SET DEFAULT nextval('lending_fines_id_seq'::regclass);

ALTER TABLE ONLY lendings ALTER COLUMN id SET DEFAULT nextval('lendings_id_seq'::regclass);

ALTER TABLE ONLY logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq'::regclass);

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);

ALTER TABLE ONLY reservations ALTER COLUMN id SET DEFAULT nextval('reservations_id_seq'::regclass);

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);

ALTER TABLE ONLY users_types ALTER COLUMN id SET DEFAULT nextval('users_types_id_seq'::regclass);

ALTER TABLE ONLY vocabulary_idx_autocomplete ALTER COLUMN id SET DEFAULT nextval('vocabulary_idx_autocomplete_id_seq'::regclass);

ALTER TABLE ONLY vocabulary_indexing_groups ALTER COLUMN id SET DEFAULT nextval('vocabulary_indexing_groups_id_seq'::regclass);

ALTER TABLE ONLY vocabulary_records ALTER COLUMN id SET DEFAULT nextval('vocabulary_records_id_seq'::regclass);

ALTER TABLE ONLY vocabulary_searches ALTER COLUMN id SET DEFAULT nextval('vocabulary_searches_id_seq'::regclass);

ALTER TABLE ONLY z3950_addresses ALTER COLUMN id SET DEFAULT nextval('z3950_addresses_id_seq'::regclass);

ALTER TABLE ONLY access_cards
    ADD CONSTRAINT "PK_access_cards" PRIMARY KEY (id);

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "PK_access_control" PRIMARY KEY (id);

ALTER TABLE ONLY authorities_brief_formats
    ADD CONSTRAINT "PK_authorities_brief_formats" PRIMARY KEY (datafield);

ALTER TABLE ONLY authorities_form_datafields
    ADD CONSTRAINT "PK_authorities_form_datafields" PRIMARY KEY (datafield);

ALTER TABLE ONLY authorities_form_subfields
    ADD CONSTRAINT "PK_authorities_form_subfields" PRIMARY KEY (datafield, subfield);

ALTER TABLE ONLY authorities_idx_autocomplete
    ADD CONSTRAINT "PK_authorities_idx_autocomplete" PRIMARY KEY (id);

ALTER TABLE ONLY authorities_idx_fields
    ADD CONSTRAINT "PK_authorities_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);

ALTER TABLE ONLY authorities_idx_sort
    ADD CONSTRAINT "PK_authorities_idx_sort" PRIMARY KEY (record_id, indexing_group_id);

ALTER TABLE ONLY authorities_indexing_groups
    ADD CONSTRAINT "PK_authorities_indexing_groups" PRIMARY KEY (id);

ALTER TABLE ONLY authorities_records
    ADD CONSTRAINT "PK_authorities_records" PRIMARY KEY (id);

ALTER TABLE ONLY authorities_search_results
    ADD CONSTRAINT "PK_authorities_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);

ALTER TABLE ONLY authorities_searches
    ADD CONSTRAINT "PK_authorities_searches" PRIMARY KEY (id);

ALTER TABLE ONLY backups
    ADD CONSTRAINT "PK_backups" PRIMARY KEY (id);

ALTER TABLE ONLY biblio_brief_formats
    ADD CONSTRAINT "PK_biblio_brief_formats" PRIMARY KEY (datafield);

ALTER TABLE ONLY biblio_form_datafields
    ADD CONSTRAINT "PK_biblio_form_datafields" PRIMARY KEY (datafield);

ALTER TABLE ONLY biblio_form_subfields
    ADD CONSTRAINT "PK_biblio_form_subfields" PRIMARY KEY (datafield, subfield);

ALTER TABLE ONLY biblio_idx_autocomplete
    ADD CONSTRAINT "PK_biblio_idx_autocomplete" PRIMARY KEY (id);

ALTER TABLE ONLY biblio_idx_fields
    ADD CONSTRAINT "PK_biblio_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);

ALTER TABLE ONLY biblio_idx_sort
    ADD CONSTRAINT "PK_biblio_idx_sort" PRIMARY KEY (record_id, indexing_group_id);

ALTER TABLE ONLY biblio_indexing_groups
    ADD CONSTRAINT "PK_biblio_indexing_groups" PRIMARY KEY (id);

ALTER TABLE ONLY biblio_records
    ADD CONSTRAINT "PK_biblio_records" PRIMARY KEY (id);

ALTER TABLE ONLY biblio_search_results
    ADD CONSTRAINT "PK_biblio_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);

ALTER TABLE ONLY biblio_searches
    ADD CONSTRAINT "PK_biblio_searches" PRIMARY KEY (id);

ALTER TABLE ONLY configurations
    ADD CONSTRAINT "PK_configurations" PRIMARY KEY (key);

ALTER TABLE ONLY digital_media
    ADD CONSTRAINT "PK_digital_media" PRIMARY KEY (id);

ALTER TABLE ONLY holding_creation_counter
    ADD CONSTRAINT "PK_holding_creation_counter" PRIMARY KEY (id);

ALTER TABLE ONLY holding_form_datafields
    ADD CONSTRAINT "PK_holding_form_datafields" PRIMARY KEY (datafield);

ALTER TABLE ONLY holding_form_subfields
    ADD CONSTRAINT "PK_holding_form_subfields" PRIMARY KEY (datafield, subfield);

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "PK_lending_fines" PRIMARY KEY (id);

ALTER TABLE ONLY logins
    ADD CONSTRAINT "PK_logins" PRIMARY KEY (id);

ALTER TABLE ONLY orders
    ADD CONSTRAINT "PK_order" PRIMARY KEY (id);

ALTER TABLE ONLY permissions
    ADD CONSTRAINT "PK_permissions" PRIMARY KEY (login_id, permission);

ALTER TABLE ONLY quotations
    ADD CONSTRAINT "PK_quotations" PRIMARY KEY (id);

ALTER TABLE ONLY requests
    ADD CONSTRAINT "PK_request" PRIMARY KEY (id);

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "PK_request_quotation" PRIMARY KEY (request_id, quotation_id);

ALTER TABLE ONLY suppliers
    ADD CONSTRAINT "PK_supplier" PRIMARY KEY (id);

ALTER TABLE ONLY translations
    ADD CONSTRAINT "PK_translations" PRIMARY KEY (language, key);

ALTER TABLE ONLY users_fields
    ADD CONSTRAINT "PK_users_fields" PRIMARY KEY (key);

ALTER TABLE ONLY users_types
    ADD CONSTRAINT "PK_users_types" PRIMARY KEY (id);

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "PK_users_values" PRIMARY KEY (user_id, key);

ALTER TABLE ONLY vocabulary_brief_formats
    ADD CONSTRAINT "PK_vocabulary_brief_formats" PRIMARY KEY (datafield);

ALTER TABLE ONLY vocabulary_form_datafields
    ADD CONSTRAINT "PK_vocabulary_form_datafields" PRIMARY KEY (datafield);

ALTER TABLE ONLY vocabulary_form_subfields
    ADD CONSTRAINT "PK_vocabulary_form_subfields" PRIMARY KEY (datafield, subfield);

ALTER TABLE ONLY vocabulary_idx_autocomplete
    ADD CONSTRAINT "PK_vocabulary_idx_autocomplete" PRIMARY KEY (id);

ALTER TABLE ONLY vocabulary_idx_fields
    ADD CONSTRAINT "PK_vocabulary_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);

ALTER TABLE ONLY vocabulary_idx_sort
    ADD CONSTRAINT "PK_vocabulary_idx_sort" PRIMARY KEY (record_id, indexing_group_id);

ALTER TABLE ONLY vocabulary_indexing_groups
    ADD CONSTRAINT "PK_vocabulary_indexing_groups" PRIMARY KEY (id);

ALTER TABLE ONLY vocabulary_records
    ADD CONSTRAINT "PK_vocabulary_records" PRIMARY KEY (id);

ALTER TABLE ONLY vocabulary_search_results
    ADD CONSTRAINT "PK_vocabulary_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);

ALTER TABLE ONLY vocabulary_searches
    ADD CONSTRAINT "PK_vocabulary_searches" PRIMARY KEY (id);

ALTER TABLE ONLY z3950_addresses
    ADD CONSTRAINT "PK_z3950_addresses" PRIMARY KEY (id);

ALTER TABLE ONLY access_cards
    ADD CONSTRAINT "UN_access_cards" UNIQUE (code);

ALTER TABLE ONLY logins
    ADD CONSTRAINT "UN_logins" UNIQUE (login);

ALTER TABLE ONLY biblio_holdings
    ADD CONSTRAINT pk_biblio_holdings PRIMARY KEY (id);

ALTER TABLE ONLY lendings
    ADD CONSTRAINT pk_lendings PRIMARY KEY (id);

ALTER TABLE ONLY reservations
    ADD CONSTRAINT pk_reservations PRIMARY KEY (id);

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

CREATE INDEX "FKI_access_control_access_cards" ON access_control USING btree (access_card_id);

CREATE INDEX "FKI_access_control_users" ON access_control USING btree (user_id);

CREATE INDEX "IX_authorities_idx_autocomplete_record_id" ON authorities_idx_autocomplete USING btree (record_id);

CREATE INDEX "IX_authorities_idx_autocomplete_word" ON authorities_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);

CREATE INDEX "IX_authorities_idx_fields_word" ON authorities_idx_fields USING btree (word varchar_pattern_ops);

CREATE INDEX "IX_authorities_search_results" ON authorities_search_results USING btree (search_id, record_id);

CREATE UNIQUE INDEX "IX_biblio_holdings_accession_number" ON biblio_holdings USING btree (accession_number);

CREATE INDEX "IX_biblio_holdings_biblio_record" ON biblio_holdings USING btree (record_id, database);

CREATE INDEX "IX_biblio_holdings_location_d" ON biblio_holdings USING btree (record_id, location_d);

CREATE INDEX "IX_biblio_idx_autocomplete_record_id" ON biblio_idx_autocomplete USING btree (record_id);

CREATE INDEX "IX_biblio_idx_autocomplete_word" ON biblio_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);

CREATE INDEX "IX_biblio_idx_fields_word" ON biblio_idx_fields USING btree (word varchar_pattern_ops);

CREATE INDEX "IX_biblio_search_results" ON biblio_search_results USING btree (search_id, record_id);

CREATE INDEX "IX_users_name" ON users USING btree (name varchar_pattern_ops);

CREATE INDEX "IX_vocabulary_idx_autocomplete_record_id" ON vocabulary_idx_autocomplete USING btree (record_id);

CREATE INDEX "IX_vocabulary_idx_autocomplete_word" ON vocabulary_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);

CREATE INDEX "IX_vocabulary_idx_fields_word" ON vocabulary_idx_fields USING btree (word varchar_pattern_ops);

CREATE INDEX "IX_vocabulary_search_results" ON vocabulary_search_results USING btree (search_id, record_id);

CREATE INDEX ix_access_control_departure_time_user_id ON access_control USING btree (departure_time, user_id);

CREATE TRIGGER "TRIGGER_clear_authorities_indexing_type" AFTER DELETE ON authorities_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('authorities');

CREATE TRIGGER "TRIGGER_clear_authorities_record" AFTER DELETE ON authorities_records FOR EACH ROW EXECUTE PROCEDURE clear_record('authorities');

CREATE TRIGGER "TRIGGER_clear_biblio_indexing_type" AFTER DELETE ON biblio_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('biblio');

CREATE TRIGGER "TRIGGER_clear_biblio_record" AFTER DELETE ON biblio_records FOR EACH ROW EXECUTE PROCEDURE clear_record('biblio');

CREATE TRIGGER "TRIGGER_clear_vocabulary_indexing_type" AFTER DELETE ON vocabulary_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('vocabulary');

CREATE TRIGGER "TRIGGER_clear_vocabulary_record" AFTER DELETE ON vocabulary_records FOR EACH ROW EXECUTE PROCEDURE clear_record('vocabulary');

CREATE TRIGGER "TRIGGER_digital_media_lo" BEFORE DELETE ON digital_media FOR EACH ROW EXECUTE PROCEDURE global.unlink();

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "FK_access_control_access_cards" FOREIGN KEY (access_card_id) REFERENCES access_cards(id) ON DELETE CASCADE;

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "FK_access_control_users" FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE ONLY authorities_form_subfields
    ADD CONSTRAINT "FK_authorities_form_subfields_authorities_form_datafields" FOREIGN KEY (datafield) REFERENCES authorities_form_datafields(datafield) ON DELETE CASCADE;

ALTER TABLE ONLY biblio_form_subfields
    ADD CONSTRAINT "FK_biblio_form_subfields_biblio_form_datafields" FOREIGN KEY (datafield) REFERENCES biblio_form_datafields(datafield) ON DELETE CASCADE;

ALTER TABLE ONLY holding_form_subfields
    ADD CONSTRAINT "FK_holding_form_subfields_holding_form_datafields" FOREIGN KEY (datafield) REFERENCES holding_form_datafields(datafield) ON DELETE CASCADE;

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "FK_lending_fines_lendings" FOREIGN KEY (lending_id) REFERENCES lendings(id) ON DELETE CASCADE;

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "FK_lending_fines_users" FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE ONLY permissions
    ADD CONSTRAINT "FK_permissions_logins" FOREIGN KEY (login_id) REFERENCES logins(id) ON DELETE CASCADE;

ALTER TABLE ONLY quotations
    ADD CONSTRAINT "FK_quotations_suppliers" FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "FK_request_quotation_quotations" FOREIGN KEY (quotation_id) REFERENCES quotations(id) ON DELETE CASCADE;

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "FK_request_quotation_requests" FOREIGN KEY (request_id) REFERENCES requests(id) ON DELETE CASCADE;

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "FK_users_values_users" FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "FK_users_values_users_fields" FOREIGN KEY (key) REFERENCES users_fields(key) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY vocabulary_form_subfields
    ADD CONSTRAINT "FK_vocabulary_form_subfields_vocabulary_form_datafields" FOREIGN KEY (datafield) REFERENCES vocabulary_form_datafields(datafield) ON DELETE CASCADE;

ALTER TABLE ONLY orders
    ADD CONSTRAINT "FK_orders_quotations" FOREIGN KEY (quotation_id) REFERENCES quotations(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY biblio_holdings
    ADD CONSTRAINT fk_biblio_holdings_biblio_records FOREIGN KEY (record_id) REFERENCES biblio_records(id) ON DELETE CASCADE;

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_biblio_holdings FOREIGN KEY (holding_id) REFERENCES biblio_holdings(id) ON DELETE CASCADE;

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_lendings FOREIGN KEY (previous_lending_id) REFERENCES lendings(id) ON DELETE CASCADE;

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE ONLY reservations
    ADD CONSTRAINT fk_lendings_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE ONLY reservations
    ADD CONSTRAINT fk_reservations_biblio_records FOREIGN KEY (record_id) REFERENCES biblio_records(id) ON DELETE CASCADE;

-- Inicializar contadores de sequências
SELECT pg_catalog.setval('access_cards_id_seq', 1, false);
SELECT pg_catalog.setval('access_control_id_seq', 1, false);
SELECT pg_catalog.setval('authorities_idx_autocomplete_id_seq', 1, false);
SELECT pg_catalog.setval('authorities_indexing_groups_id_seq', 5, false);
SELECT pg_catalog.setval('authorities_records_id_seq', 1, false);
SELECT pg_catalog.setval('authorities_searches_id_seq', 1, false);
SELECT pg_catalog.setval('backups_id_seq', 1, false);
SELECT pg_catalog.setval('biblio_holdings_id_seq', 1, false);
SELECT pg_catalog.setval('biblio_indexing_groups_id_seq', 7, false);
SELECT pg_catalog.setval('biblio_records_id_seq', 1, false);
SELECT pg_catalog.setval('biblio_searches_id_seq', 1, false);
SELECT pg_catalog.setval('digital_media_id_seq', 1, false);
SELECT pg_catalog.setval('holding_creation_counter_id_seq', 1, false);
SELECT pg_catalog.setval('lending_fines_id_seq', 1, false);
SELECT pg_catalog.setval('lendings_id_seq', 1, false);
SELECT pg_catalog.setval('logins_id_seq', 2, false);
SELECT pg_catalog.setval('orders_id_seq', 1, false);
SELECT pg_catalog.setval('quotations_id_seq', 1, false);
SELECT pg_catalog.setval('request_id_seq', 1, false);
SELECT pg_catalog.setval('reservations_id_seq', 1, false);
SELECT pg_catalog.setval('supplier_id_seq', 1, false);
SELECT pg_catalog.setval('users_id_seq', 1, false);
SELECT pg_catalog.setval('users_types_id_seq', 3, false);
SELECT pg_catalog.setval('vocabulary_idx_autocomplete_id_seq', 1, false);
SELECT pg_catalog.setval('vocabulary_indexing_groups_id_seq', 5, false);
SELECT pg_catalog.setval('vocabulary_records_id_seq', 1, false);
SELECT pg_catalog.setval('vocabulary_searches_id_seq', 1, false);
SELECT pg_catalog.setval('z3950_addresses_id_seq', 13, false);
SELECT pg_catalog.setval('biblio_idx_autocomplete_id_seq', 5103, false);
