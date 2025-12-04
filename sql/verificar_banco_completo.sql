-- VERIFICAÇÃO COMPLETA DO BANCO DE DADOS
-- Execute no Supabase SQL Editor

-- 1. Verificar estrutura
SELECT 
  'ESTRUTURA' as categoria,
  'Tabelas no schema global' as item,
  COUNT(*)::text as quantidade
FROM information_schema.tables 
WHERE table_schema = 'global'

UNION ALL

SELECT 
  'ESTRUTURA',
  'Funções no schema global',
  COUNT(*)::text
FROM information_schema.routines 
WHERE routine_schema = 'global'

UNION ALL

SELECT 
  'ESTRUTURA',
  'Sequences',
  COUNT(*)::text
FROM information_schema.sequences 
WHERE sequence_schema = 'global'

UNION ALL

-- 2. Verificar dados essenciais
SELECT 
  'DADOS',
  'Traduções',
  COUNT(*)::text
FROM global.translations

UNION ALL

SELECT 
  'DADOS',
  'Configurações',
  COUNT(*)::text
FROM global.configurations

UNION ALL

SELECT 
  'DADOS',
  'Logins (usuários)',
  COUNT(*)::text
FROM global.logins

UNION ALL

SELECT 
  'DADOS',
  'Tipos de usuário',
  COUNT(*)::text
FROM global.users_types

UNION ALL

SELECT 
  'DADOS',
  'Servidores Z39.50',
  COUNT(*)::text
FROM global.z3950_addresses

UNION ALL

SELECT 
  'DADOS',
  'Grupos indexação bibliográfica',
  COUNT(*)::text
FROM global.biblio_indexing_groups

UNION ALL

SELECT 
  'DADOS',
  'Autocomplete bibliográfico',
  COUNT(*)::text
FROM global.biblio_idx_autocomplete

UNION ALL

-- 3. Verificar usuário admin
SELECT 
  'USUÁRIO',
  'Login admin existe',
  CASE WHEN EXISTS (SELECT 1 FROM global.logins WHERE login = 'admin') 
       THEN 'SIM' ELSE 'NÃO' END
FROM (SELECT 1) AS dummy

UNION ALL

-- 4. Verificar permissões
SELECT 
  'PERMISSÕES',
  'Schema global acessível',
  CASE WHEN has_schema_privilege('postgres', 'global', 'USAGE') 
       THEN 'SIM' ELSE 'NÃO' END
FROM (SELECT 1) AS dummy

ORDER BY categoria, item;
