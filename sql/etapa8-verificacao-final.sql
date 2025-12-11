-- ============================================================
-- ETAPA 8: VERIFICAÇÃO FINAL
-- ============================================================

-- 1. Verificar language_name
SELECT language, text 
FROM biblivre4.translations 
WHERE key = 'language_name' 
ORDER BY language;

-- 2. Verificar configurações
SELECT key, value 
FROM biblivre4.configurations 
WHERE key LIKE '%language%';

-- 3. Verificar usuários
SELECT id, login 
FROM biblivre4.logins;

-- 4. Verificar indexing groups
SELECT id, translation_key 
FROM biblivre4.biblio_indexing_groups 
ORDER BY id;

-- 5. Total de traduções
SELECT COUNT(*) as total_translations 
FROM biblivre4.translations;

-- ✅ Se tudo estiver OK, pronto para reiniciar aplicação!
