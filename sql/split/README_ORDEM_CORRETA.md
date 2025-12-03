# 🗄️ Inicialização do Banco de Dados Supabase - Ordem Correta

Os arquivos SQL foram reorganizados para garantir que as tabelas sejam criadas antes dos dados serem inseridos.

## 📋 Arquivos na Ordem Correta

Execute **exatamente nesta ordem**:

### 1️⃣ **01_estrutura_completo.sql** ⭐ IMPORTANTE - EXECUTE PRIMEIRO
- Contém todos os comandos CREATE TABLE, CREATE FUNCTION, CREATE SEQUENCE, ALTER TABLE
- Cria toda a estrutura do banco de dados (213 comandos)
- Remove comandos que causam erro no Supabase (ALTER OWNER)
- **Este arquivo DEVE ser executado antes de qualquer outro!**

### 2️⃣ **02_dados_parte1.sql**
- Primeiros 2.000 registros INSERT
- Dados de traduções, configurações iniciais

### 3️⃣ **03_dados_parte2.sql**
- Próximos 2.000 registros INSERT

### 4️⃣ **04_dados_parte3.sql**
- Próximos 2.000 registros INSERT

### 5️⃣ **05_dados_parte4.sql**
- Próximos 2.000 registros INSERT

### 6️⃣ **06_dados_parte5.sql**
- Próximos 2.000 registros INSERT

### 7️⃣ **07_dados_parte6.sql**
- Últimos 1.816 registros INSERT
- Finaliza a inserção de dados (Total: 11.816 registros)

## 🔧 Como Executar no Supabase

### Passo 1: Limpar o banco (se necessário)
Se você já executou algum script antes e teve erros, limpe primeiro:

```sql
DROP SCHEMA IF EXISTS global CASCADE;
CREATE SCHEMA global;
```

### Passo 2: Executar 01_estrutura_completo.sql
1. Abra o arquivo `01_estrutura_completo.sql`
2. Copie TODO o conteúdo (Ctrl+A, Ctrl+C)
3. Cole no SQL Editor do Supabase
4. Clique em **RUN**
5. **AGUARDE até terminar completamente** (pode levar 1-2 minutos)

### Passo 3: Executar os arquivos de dados (02 a 07)
Para cada arquivo, do 02 ao 07:
1. Abra o arquivo (ex: `02_dados_parte1.sql`)
2. Copie todo o conteúdo (Ctrl+A, Ctrl+C)
3. Cole no SQL Editor
4. Clique em **RUN**
5. Aguarde terminar (30 segundos a 1 minuto)
6. **Importante:** Só passe para o próximo arquivo após o anterior terminar com sucesso

## ✅ Verificação Final

Após executar todos os arquivos, verifique se tudo está correto:

```sql
-- Deve retornar 1
SELECT COUNT(*) FROM information_schema.schemata WHERE schema_name = 'global';

-- Deve retornar um número maior que 50 (número de tabelas criadas)
SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'global';

-- Deve retornar milhares de registros
SELECT COUNT(*) FROM global.translations;
```

## ⚠️ Importante

- **NÃO pule o arquivo 01_estrutura_completo.sql** - ele DEVE ser o primeiro
- Aguarde cada arquivo terminar completamente antes de executar o próximo
- Se algum erro ocorrer, anote qual arquivo e linha para debug
- O arquivo 01_estrutura_completo.sql é o mais importante - sem ele, nada funcionará
- Total de arquivos: 7 (1 de estrutura + 6 de dados)

## 🎉 Sucesso!

Depois de executar todos os 7 arquivos com sucesso, seu banco estará pronto e a aplicação no Render funcionará!
