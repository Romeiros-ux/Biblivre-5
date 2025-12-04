-- LIMPEZA COMPLETA DE DADOS (mantém apenas traduções e estrutura)
SET search_path = global, pg_catalog;

-- Desabilitar triggers temporariamente para acelerar
SET session_replication_role = replica;

-- Limpar TODAS as tabelas de dados (em ordem de dependências)
TRUNCATE TABLE access_control CASCADE;
TRUNCATE TABLE access_cards CASCADE;
TRUNCATE TABLE lending_fines CASCADE;
TRUNCATE TABLE lendings CASCADE;
TRUNCATE TABLE reservations CASCADE;
TRUNCATE TABLE biblio_holdings CASCADE;

-- Limpar índices e buscas
TRUNCATE TABLE biblio_search_results CASCADE;
TRUNCATE TABLE biblio_searches CASCADE;
TRUNCATE TABLE biblio_idx_autocomplete CASCADE;
TRUNCATE TABLE biblio_idx_fields CASCADE;
TRUNCATE TABLE biblio_idx_sort CASCADE;
TRUNCATE TABLE biblio_records CASCADE;

TRUNCATE TABLE authorities_search_results CASCADE;
TRUNCATE TABLE authorities_searches CASCADE;
TRUNCATE TABLE authorities_idx_autocomplete CASCADE;
TRUNCATE TABLE authorities_idx_fields CASCADE;
TRUNCATE TABLE authorities_idx_sort CASCADE;
TRUNCATE TABLE authorities_records CASCADE;

TRUNCATE TABLE vocabulary_search_results CASCADE;
TRUNCATE TABLE vocabulary_searches CASCADE;
TRUNCATE TABLE vocabulary_idx_autocomplete CASCADE;
TRUNCATE TABLE vocabulary_idx_fields CASCADE;
TRUNCATE TABLE vocabulary_idx_sort CASCADE;
TRUNCATE TABLE vocabulary_records CASCADE;

-- Limpar configurações
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
TRUNCATE TABLE holding_creation_counter CASCADE;

-- Limpar aquisição
TRUNCATE TABLE request_quotation CASCADE;
TRUNCATE TABLE orders CASCADE;
TRUNCATE TABLE quotations CASCADE;
TRUNCATE TABLE requests CASCADE;
TRUNCATE TABLE suppliers CASCADE;

-- Limpar usuários
TRUNCATE TABLE users_values CASCADE;
TRUNCATE TABLE users_fields CASCADE;
TRUNCATE TABLE users CASCADE;
TRUNCATE TABLE users_types CASCADE;
TRUNCATE TABLE permissions CASCADE;
TRUNCATE TABLE logins CASCADE;

-- Limpar sistema
TRUNCATE TABLE configurations CASCADE;
TRUNCATE TABLE digital_media CASCADE;
TRUNCATE TABLE backups CASCADE;
TRUNCATE TABLE z3950_addresses CASCADE;

-- Reabilitar triggers
SET session_replication_role = DEFAULT;

-- Resetar TODAS as sequências
SELECT setval('access_cards_id_seq', 1, false);
SELECT setval('access_control_id_seq', 1, false);
SELECT setval('authorities_idx_autocomplete_id_seq', 1, false);
SELECT setval('authorities_indexing_groups_id_seq', 1, false);
SELECT setval('authorities_records_id_seq', 1, false);
SELECT setval('authorities_searches_id_seq', 1, false);
SELECT setval('backups_id_seq', 1, false);
SELECT setval('biblio_holdings_id_seq', 1, false);
SELECT setval('biblio_idx_autocomplete_id_seq', 1, false);
SELECT setval('biblio_indexing_groups_id_seq', 1, false);
SELECT setval('biblio_records_id_seq', 1, false);
SELECT setval('biblio_searches_id_seq', 1, false);
SELECT setval('digital_media_id_seq', 1, false);
SELECT setval('holding_creation_counter_id_seq', 1, false);
SELECT setval('lending_fines_id_seq', 1, false);
SELECT setval('lendings_id_seq', 1, false);
SELECT setval('logins_id_seq', 1, false);
SELECT setval('orders_id_seq', 1, false);
SELECT setval('quotations_id_seq', 1, false);
SELECT setval('request_id_seq', 1, false);
SELECT setval('reservations_id_seq', 1, false);
SELECT setval('supplier_id_seq', 1, false);
SELECT setval('users_id_seq', 1, false);
SELECT setval('users_types_id_seq', 1, false);
SELECT setval('vocabulary_idx_autocomplete_id_seq', 1, false);
SELECT setval('vocabulary_indexing_groups_id_seq', 1, false);
SELECT setval('vocabulary_records_id_seq', 1, false);
SELECT setval('vocabulary_searches_id_seq', 1, false);
SELECT setval('z3950_addresses_id_seq', 1, false);

SELECT 
  'LIMPEZA COMPLETA CONCLUÍDA!' as status,
  (SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'global') as total_tabelas,
  (SELECT COUNT(*) FROM global.translations) as traducoes_preservadas;
