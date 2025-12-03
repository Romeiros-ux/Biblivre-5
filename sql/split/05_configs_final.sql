-- Configurações do Biblivre (15 registros)
SET search_path = global, pg_catalog;

INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.default_language', 'pt-BR', 'string', true, '2013-04-13 13:37:22.871407', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('search.results_per_page', '25', 'integer', true, '2013-04-13 13:37:22.871407', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('search.result_limit', '6000', 'integer', true, '2013-04-13 13:37:22.871407', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.currency', 'R$', 'string', true, '2014-02-22 15:20:28.594713', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('cataloging.accession_number_prefix', 'Bib', 'string', true, '2014-02-22 15:20:56.235706', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('search.distributed_search_limit', '100', 'integer', true, '2014-02-22 15:21:15.676016', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.business_days', '2,3,4,5,6', 'string', true, '2014-02-22 15:22:11.189584', NULL);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.uid', '', 'string', false, '2014-05-21 21:46:46.702', 0);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.multi_schema', 'false', 'boolean', true, '2014-06-14 18:32:29.586269', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.psql_path', '', 'string', false, '2014-06-21 11:40:03.8973', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.pg_dump_path', '', 'string', false, '2014-06-21 11:40:03.8973', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.backup_path', '', 'string', false, '2014-06-21 11:40:03.8973', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.title', 'Biblivre IV', 'string', true, '2014-06-21 11:42:07.150326', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.subtitle', 'VersÃ£o 4.0 Beta', 'string', false, '2014-06-21 11:42:07.150326', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('setup.new_library', 'true', 'boolean', false, '2014-05-28 22:01:58.228421', 0);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.business_days', '2,3,4,5,6,7', 'string', true, '2014-02-22 17:07:33.380256', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.default_language', 'pt-BR', 'string', true, '2014-02-22 17:18:48.852604', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.title', 'Biblivre IV', 'string', true, '2014-02-22 17:01:57.071056', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('administration.z3950.server.active', 'true', 'boolean', true, '2014-04-07 19:58:15.127', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('circulation.lending_receipt.printer.type', 'printer_common', 'string', false, '2014-04-14 15:27:14.339', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.backup_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.pg_dump_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);
INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.psql_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);
