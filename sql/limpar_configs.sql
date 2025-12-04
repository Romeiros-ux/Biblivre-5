-- Limpar dados de configuração e usuários (mantém traduções)
SET search_path = global, pg_catalog;

-- Limpar usuários e permissões
TRUNCATE TABLE permissions CASCADE;
TRUNCATE TABLE users_values CASCADE;
TRUNCATE TABLE users CASCADE;
TRUNCATE TABLE logins CASCADE;

-- Limpar tabelas de configuração
TRUNCATE TABLE authorities_brief_formats CASCADE;
TRUNCATE TABLE authorities_form_datafields CASCADE;
TRUNCATE TABLE authorities_form_subfields CASCADE;
TRUNCATE TABLE authorities_indexing_groups CASCADE;
TRUNCATE TABLE biblio_brief_formats CASCADE;
TRUNCATE TABLE biblio_form_datafields CASCADE;
TRUNCATE TABLE biblio_form_subfields CASCADE;
TRUNCATE TABLE biblio_indexing_groups CASCADE;
TRUNCATE TABLE vocabulary_brief_formats CASCADE;
TRUNCATE TABLE vocabulary_form_datafields CASCADE;
TRUNCATE TABLE vocabulary_form_subfields CASCADE;
TRUNCATE TABLE vocabulary_indexing_groups CASCADE;
TRUNCATE TABLE holding_form_datafields CASCADE;
TRUNCATE TABLE holding_form_subfields CASCADE;
TRUNCATE TABLE users_fields CASCADE;
TRUNCATE TABLE users_types CASCADE;
TRUNCATE TABLE configurations CASCADE;
TRUNCATE TABLE z3950_addresses CASCADE;

-- Resetar sequências
SELECT setval('logins_id_seq', 1, false);
SELECT setval('users_id_seq', 1, false);
SELECT setval('authorities_indexing_groups_id_seq', 1, false);
SELECT setval('biblio_indexing_groups_id_seq', 1, false);
SELECT setval('vocabulary_indexing_groups_id_seq', 1, false);
SELECT setval('users_types_id_seq', 1, false);
SELECT setval('z3950_addresses_id_seq', 1, false);

SELECT 'Dados limpos! Traduções preservadas.' as status,
       (SELECT COUNT(*) FROM global.translations) as traducoes_ok;
