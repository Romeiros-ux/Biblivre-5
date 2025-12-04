#  DIAGNÓSTICO COMPLETO DO DEPLOY

##  BANCO DE DADOS (Supabase)
Execute o arquivo: sql/verificar_banco_completo.sql

Esperado:
- Tabelas: 55
- Funções: 5  
- Traduções: 6158
- Configurações: 17+
- Login admin: SIM

##  VARIÁVEIS DE AMBIENTE (Render)

Verificar no Dashboard  biblivre5  Environment:

DB_HOST=db.uqfvicgelyxmikqaiong.supabase.co
DB_PORT=5432
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=OgirdoR!198500

##  POSSÍVEIS PROBLEMAS

### 1. Schema Search Path
A aplicação pode estar procurando no schema 'public' em vez de 'global'.

**Teste no Supabase:**
\\\sql
-- Verificar se public.translations existe (NÃO DEVERIA)
SELECT COUNT(*) FROM information_schema.tables 
WHERE table_schema = 'public' AND table_name = 'translations';

-- Deve retornar 0
\\\

### 2. Permissões do Usuário
**Execute no Supabase:**
\\\sql
-- Garantir permissões totais
GRANT ALL ON SCHEMA global TO postgres;
GRANT ALL ON ALL TABLES IN SCHEMA global TO postgres;
GRANT ALL ON ALL SEQUENCES IN SCHEMA global TO postgres;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA global TO postgres;

-- Configurar search_path padrão para o usuário
ALTER USER postgres SET search_path TO global, public;
\\\

### 3. Conexão SSL
Verificar se o Supabase requer SSL (já está configurado com ?sslmode=require).

### 4. Firewall do Supabase
Verificar se o IP do Render está permitido.

**No Supabase Dashboard:**
Settings  Database  Connection pooling  Allowed IP addresses

Se estiver restrito, adicionar: 0.0.0.0/0 (permite todos - apenas para teste)

### 5. Logs Detalhados do Render
Procurar por estas linhas nos logs:

 **Connection refused**  Problema de firewall/IP
 **Authentication failed**  Problema de senha/usuário  
 **schema "global" does not exist**  Schema não criado
 **relation "translations" does not exist**  Tabelas não criadas
 **Server startup in XXXX ms**  Tomcat iniciou (mas pode ter falhado antes)

##  SOLUÇÃO RÁPIDA

Se o problema for search_path, execute no Supabase:

\\\sql
-- Criar alias no public apontando para global
CREATE SCHEMA IF NOT EXISTS public;
DROP TABLE IF EXISTS public.translations CASCADE;
DROP TABLE IF EXISTS public.configurations CASCADE;
DROP TABLE IF EXISTS public.logins CASCADE;

-- OU mudar search_path da aplicação
ALTER DATABASE postgres SET search_path TO global, public, pg_catalog;
\\\

Depois reiniciar o Render.
