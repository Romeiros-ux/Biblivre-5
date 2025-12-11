-- ============================================================
-- ATUALIZAR SENHA DO ADMIN PARA SHA1+Base64
-- ============================================================
-- A aplicação usa SHA1 + Base64 para codificar senhas, não MD5
-- Hash correto de "admin": 0DPiKuNIrrVmD8IUCuw1hQxNqZc=

SET search_path = biblivre4;

-- Atualizar senha do admin
UPDATE biblivre4.logins 
SET password = '0DPiKuNIrrVmD8IUCuw1hQxNqZc=',
    modified = NOW()
WHERE login = 'admin';

-- Verificar se atualizou
SELECT login, password, modified
FROM biblivre4.logins
WHERE login = 'admin';
