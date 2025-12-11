-- Copiar configurações do public para biblivre4
DROP TABLE IF EXISTS biblivre4.configurations CASCADE;
CREATE TABLE biblivre4.configurations AS 
SELECT * FROM public.configurations;

-- Criar constraints e índices
ALTER TABLE biblivre4.configurations ADD PRIMARY KEY (key);
CREATE INDEX idx_configurations_key ON biblivre4.configurations(key);

-- Verificar se copiou
SELECT key, value, type 
FROM biblivre4.configurations 
WHERE key LIKE '%language%'
ORDER BY key;
