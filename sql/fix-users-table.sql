-- RECRIAR TABELA USERS COM ESTRUTURA CORRETA DO BIBLIVRE
-- ATENÇÃO: Isso vai apagar todos os dados da tabela users atual!

-- 1. Fazer backup da tabela atual (caso tenha algo)
CREATE TABLE users_backup AS SELECT * FROM users;

-- 2. Dropar a tabela corrupta
DROP TABLE users CASCADE;

-- 3. Criar tabela users com estrutura correta do Biblivre
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name character varying NOT NULL,
    type integer,
    photo_id character varying,
    status character varying NOT NULL DEFAULT 'active',
    login_id integer,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer,
    user_card_printed boolean DEFAULT false,
    name_ascii character varying
);

-- 4. Criar tabela logins (para autenticação)
CREATE TABLE IF NOT EXISTS logins (
    id SERIAL PRIMARY KEY,
    login character varying UNIQUE NOT NULL,
    password character varying NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    created_by integer,
    modified timestamp without time zone DEFAULT now() NOT NULL,
    modified_by integer
);

-- 5. Inserir login admin (senha: admin em MD5) - usar ON CONFLICT para não dar erro
INSERT INTO logins (id, login, password, created, modified)
VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', NOW(), NOW())
ON CONFLICT (id) DO UPDATE 
SET login = 'admin', 
    password = '21232f297a57a5a743894a0e4a801fc3',
    modified = NOW();

-- 6. Inserir usuário admin vinculado ao login
INSERT INTO users (id, name, type, status, login_id, created, modified)
VALUES (1, 'Administrador', 1, 'active', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE
SET name = 'Administrador',
    type = 1,
    status = 'active',
    login_id = 1,
    modified = NOW();

-- 7. Resetar sequences
SELECT setval('logins_id_seq', (SELECT MAX(id) FROM logins));
SELECT setval('users_id_seq', (SELECT MAX(id) FROM users));

-- 8. Verificar resultado
SELECT 'Verificação final:' as info;
SELECT u.id, u.name, u.status, l.login 
FROM users u 
LEFT JOIN logins l ON u.login_id = l.id;
