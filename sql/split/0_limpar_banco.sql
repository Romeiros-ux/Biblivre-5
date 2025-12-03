-- ⚠️ ATENÇÃO: Este script apaga TUDO do banco de dados!
-- Use apenas se precisar recomeçar do zero

-- Dropar o schema global e todos os seus objetos
DROP SCHEMA IF EXISTS global CASCADE;

-- Recriar o schema vazio
CREATE SCHEMA global;

-- Mensagem de confirmação
SELECT 'Banco de dados limpo! Agora execute os arquivos na ordem: parte_1 até parte_6' AS status;
