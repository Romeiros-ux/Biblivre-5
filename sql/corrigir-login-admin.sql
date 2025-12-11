-- ============================================================
-- CORRIGIR O LOGIN DO ADMIN
-- ============================================================

SET search_path = biblivre4;

-- 1. Deletar o admin atual (se existir)
DELETE FROM biblivre4.logins WHERE login = 'admin';

-- 2. Criar novo admin com senha correta
-- Senha: admin
-- Hash MD5: 21232f297a57a5a743894a0e4a801fc3
INSERT INTO biblivre4.logins (login, password, name, created, modified) 
VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrador', NOW(), NOW());

-- 3. Verificar se foi criado corretamente
SELECT login, name, created, 
       CASE 
         WHEN password = '21232f297a57a5a743894a0e4a801fc3' THEN 'Senha OK'
         ELSE 'Senha INCORRETA'
       END as status
FROM biblivre4.logins
WHERE login = 'admin';
