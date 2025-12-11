-- ============================================================
-- ETAPA 6: Copiar tabelas USERS e LOGINS
-- ============================================================
DROP TABLE IF EXISTS biblivre4.users CASCADE;
CREATE TABLE biblivre4.users AS SELECT * FROM public.users;
ALTER TABLE biblivre4.users ADD PRIMARY KEY (id);

DROP TABLE IF EXISTS biblivre4.logins CASCADE;
CREATE TABLE biblivre4.logins AS SELECT * FROM public.logins;
ALTER TABLE biblivre4.logins ADD PRIMARY KEY (id);

-- Verificar cópia
SELECT COUNT(*) as total_users FROM biblivre4.users;
SELECT COUNT(*) as total_logins FROM biblivre4.logins;
SELECT login FROM biblivre4.logins;
