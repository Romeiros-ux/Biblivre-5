-- ============================================================
-- ETAPA 5: Copiar tabela CONFIGURATIONS
-- ============================================================
DROP TABLE IF EXISTS biblivre4.configurations CASCADE;
CREATE TABLE biblivre4.configurations AS SELECT * FROM public.configurations;
ALTER TABLE biblivre4.configurations ADD PRIMARY KEY (key);
CREATE INDEX idx_configurations_key ON biblivre4.configurations(key);

-- Verificar cópia
SELECT key, value FROM biblivre4.configurations WHERE key LIKE '%language%';
