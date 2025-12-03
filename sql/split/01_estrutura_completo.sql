-- Estrutura completa do banco de dados Biblivre
-- Criar schema global
CREATE SCHEMA IF NOT EXISTS global;
SET search_path = global, pg_catalog;

CREATE FUNCTION unlink() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	PERFORM pg_catalog.lo_unlink(OLD.blob);
CREATE FUNCTION update_translation(character varying, character varying, character varying, integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
DECLARE
	p_language ALIAS FOR $1;
CREATE FUNCTION update_user_value(integer, character varying, character varying, character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
DECLARE
	p_id ALIAS FOR $1;
CREATE TABLE configurations (
    key character varying NOT NULL,
    value character varying NOT NULL,
    type character varying DEFAULT 'string'::character varying NOT NULL,
    required boolean DEFAULT false NOT NULL,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
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


--
-- TOC entry 2442 (class 0 OID 0)
-- Dependencies: 165
-- Name: logins_id_seq; Type: SEQUENCE SET; Schema: global; Owner: biblivre
--

SELECT pg_catalog.setval('logins_id_seq', 2, false);
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


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 166
-- Name: backups_id_seq; Type: SEQUENCE SET; Schema: global; Owner: biblivre
--

SELECT pg_catalog.setval('backups_id_seq', 1, false);
CREATE TABLE schemas (
    schema character varying NOT NULL,
    name character varying,
 	disabled boolean NOT NULL DEFAULT false
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_created boolean DEFAULT false NOT NULL
);
CREATE TABLE versions (
    installed_versions character varying NOT NULL
);
ALTER TABLE ONLY logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq'::regclass);


--
-- TOC entry 2434 (class 0 OID 741240)
-- Dependencies: 163
-- Data for Name: configurations; Type: TABLE DATA; Schema: global; Owner: biblivre
--

INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.default_language', 'pt-BR', 'string', true, '2013-04-13 13:37:22.871407', NULL);
ALTER TABLE ONLY configurations
    ADD CONSTRAINT "PK_configurations" PRIMARY KEY (key);
ALTER TABLE ONLY logins
    ADD CONSTRAINT "PK_logins" PRIMARY KEY (id);
ALTER TABLE ONLY schemas
    ADD CONSTRAINT "PK_schemas" PRIMARY KEY (schema);
ALTER TABLE ONLY translations
    ADD CONSTRAINT "PK_translations" PRIMARY KEY (language, key);
ALTER TABLE ONLY versions
    ADD CONSTRAINT "PK_versions" PRIMARY KEY (installed_versions);
ALTER TABLE ONLY logins
    ADD CONSTRAINT "UN_logins" UNIQUE (login);
CREATE FUNCTION clear_indexing_type() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_fields WHERE indexing_group_id = ' || OLD.id;
CREATE FUNCTION clear_record() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	EXECUTE 'DELETE FROM "' || TG_TABLE_SCHEMA || '".' || TG_ARGV[0] || '_idx_fields WHERE record_id = ' || OLD.id;
CREATE SEQUENCE access_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
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
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
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


--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 177
-- Name: authorities_idx_autocomplete_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('authorities_idx_autocomplete_id_seq', 1, false);
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


--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 181
-- Name: authorities_indexing_groups_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('authorities_indexing_groups_id_seq', 5, false);
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


--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 183
-- Name: authorities_records_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('authorities_records_id_seq', 1, false);
CREATE TABLE authorities_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);
    created_by integer
);
CREATE SEQUENCE authorities_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE authorities_searches_id_seq OWNED BY authorities_searches.id;


--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 186
-- Name: authorities_searches_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('authorities_searches_id_seq', 1, false);
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


--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 188
-- Name: backups_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('backups_id_seq', 1, false);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);
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


--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 193
-- Name: biblio_holdings_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('biblio_holdings_id_seq', 1, false);
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


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 199
-- Name: biblio_indexing_groups_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('biblio_indexing_groups_id_seq', 7, false);
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


--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 201
-- Name: biblio_records_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('biblio_records_id_seq', 1, false);
CREATE TABLE biblio_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);
    created_by integer
);
CREATE SEQUENCE biblio_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE biblio_searches_id_seq OWNED BY biblio_searches.id;


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 204
-- Name: biblio_searches_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('biblio_searches_id_seq', 1, false);
CREATE TABLE configurations (
    key character varying NOT NULL,
    value character varying NOT NULL,
    type character varying DEFAULT 'string'::character varying NOT NULL,
    required boolean DEFAULT false NOT NULL,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer
);
CREATE SEQUENCE digital_media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE digital_media_id_seq OWNED BY digital_media.id;


--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 207
-- Name: digital_media_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('digital_media_id_seq', 1, false);
    created_by integer NOT NULL
);
CREATE SEQUENCE holding_creation_counter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE holding_creation_counter_id_seq OWNED BY holding_creation_counter.id;


--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 209
-- Name: holding_creation_counter_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('holding_creation_counter_id_seq', 1, false);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    autocomplete_type character varying DEFAULT 'disabled'::character varying NOT NULL
);
    created_by integer
);
CREATE SEQUENCE lending_fines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE lending_fines_id_seq OWNED BY lending_fines.id;


--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 213
-- Name: lending_fines_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('lending_fines_id_seq', 1, false);
    created_by integer
);
CREATE SEQUENCE lendings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE lendings_id_seq OWNED BY lendings.id;


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 215
-- Name: lendings_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('lendings_id_seq', 1, false);
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


--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 217
-- Name: logins_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('logins_id_seq', 2, false);
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


--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 219
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('orders_id_seq', 1, false);
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
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer
);
CREATE SEQUENCE reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE reservations_id_seq OWNED BY reservations.id;


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 227
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('reservations_id_seq', 1, false);
CREATE SEQUENCE supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_created boolean DEFAULT false NOT NULL
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_card_printed boolean DEFAULT false,
	name_ascii character varying
);
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


--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 233
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('users_id_seq', 1, false);
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


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_types_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('users_types_id_seq', 3, false);
CREATE TABLE users_values (
    user_id integer NOT NULL,
    key character varying NOT NULL,
    value character varying NOT NULL,
    ascii character varying
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);
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


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 241
-- Name: vocabulary_idx_autocomplete_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('vocabulary_idx_autocomplete_id_seq', 1, false);
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


--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 245
-- Name: vocabulary_indexing_groups_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('vocabulary_indexing_groups_id_seq', 5, false);
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


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 247
-- Name: vocabulary_records_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('vocabulary_records_id_seq', 1, false);
CREATE TABLE vocabulary_search_results (
    search_id integer NOT NULL,
    indexing_group_id integer NOT NULL,
    record_id integer NOT NULL
);
    created_by integer
);
CREATE SEQUENCE vocabulary_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vocabulary_searches_id_seq OWNED BY vocabulary_searches.id;


--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 250
-- Name: vocabulary_searches_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('vocabulary_searches_id_seq', 1, false);
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


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 252
-- Name: z3950_addresses_id_seq; Type: SEQUENCE SET; Schema: bib4template; Owner: biblivre
--

SELECT pg_catalog.setval('z3950_addresses_id_seq', 13, false);
ALTER TABLE ONLY z3950_addresses ALTER COLUMN id SET DEFAULT nextval('z3950_addresses_id_seq'::regclass);


--
-- TOC entry 2765 (class 0 OID 729295)
-- Dependencies: 170
-- Data for Name: access_cards; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2766 (class 0 OID 729306)
-- Dependencies: 172
-- Data for Name: access_control; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2767 (class 0 OID 729313)
-- Dependencies: 173
-- Data for Name: authorities_brief_formats; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('100', '${a}_{; }${c}_{ - }${d}', 1, '2014-03-20 12:20:01.029', NULL, '2014-03-20 12:20:01.029', NULL);
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
