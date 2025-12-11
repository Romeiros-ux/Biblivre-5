-- ============================================================
-- VERIFICAR ESTADO DA TABELA DE LOGINS
-- ============================================================

SET search_path = biblivre4;

-- 1. Ver todos os logins existentes
SELECT id, login, name, created, modified
FROM biblivre4.logins
ORDER BY id;

-- 2. Verificar encoding dos nomes de usuários
SELECT login, name, 
       length(name) as tamanho,
       octet_length(name) as bytes,
       encode(name::bytea, 'hex') as hexadecimal
FROM biblivre4.logins
ORDER BY id;

-- 3. Verificar se existe admin
SELECT login, name, created
FROM biblivre4.logins
WHERE login = 'admin';

-- 4. Verificar hash da senha do admin
SELECT login, 
       password,
       length(password) as tamanho_senha
FROM biblivre4.logins
WHERE login = 'admin';

-- 5. Testar se a senha 'admin' está com o hash correto
-- Hash MD5 de 'admin' = 21232f297a57a5a743894a0e4a801fc3
SELECT login, 
       password,
       CASE 
         WHEN password = '21232f297a57a5a743894a0e4a801fc3' THEN 'Senha OK'
         WHEN password = md5('admin') THEN 'Senha OK (usando md5)'
         ELSE 'Senha INCORRETA'
       END as status_senha
FROM biblivre4.logins
WHERE login = 'admin';

-- 6. Recriar o usuário admin com senha correta (SE NECESSÁRIO)
-- DESCOMENTE AS LINHAS ABAIXO APENAS SE PRECISAR RECRIAR:
-- DELETE FROM biblivre4.logins WHERE login = 'admin';
-- INSERT INTO biblivre4.logins (login, password, name, created, modified) 
-- VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrador', NOW(), NOW());
