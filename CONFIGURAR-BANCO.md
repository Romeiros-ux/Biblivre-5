# 🔧 Guia: Configurar Banco de Dados PostgreSQL

## ⚠️ Problema: "Não sei a senha do postgres"

Existem **3 soluções** para você:

---

## ✅ SOLUÇÃO 1: Script Automático (RECOMENDADO)

Execute o script que configurará tudo automaticamente:

### Passo a Passo:

1. **Abra o PowerShell como Administrador:**
   - Pressione `Windows + X`
   - Clique em "Windows PowerShell (Admin)" ou "Terminal (Admin)"

2. **Navegue até a pasta do projeto:**
   ```powershell
   cd "C:\Users\user\Documents\GitHub\Barbearia\Biblivre-5"
   ```

3. **Execute o script:**
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   .\setup-database-simples.ps1
   ```

4. **Aguarde a conclusão** (pode levar 2-3 minutos)

✅ **Pronto!** O banco está configurado.

---

## ✅ SOLUÇÃO 2: Usando DBeaver (Interface Gráfica)

Se preferir usar uma ferramenta visual:

1. **Baixe o DBeaver:** https://dbeaver.io/download/
2. **Instale e abra o DBeaver**
3. **Crie uma nova conexão PostgreSQL:**
   - Database: `postgres`
   - Host: `localhost`
   - Port: `5432`
   - Username: `postgres`
   - **Deixe a senha em branco** ou tente: `postgres`, `admin`, `root`
   
4. **Se conectar, execute os comandos SQL:**
   ```sql
   -- Criar usuário
   CREATE ROLE biblivre LOGIN
     ENCRYPTED PASSWORD 'abracadabra'
     SUPERUSER INHERIT CREATEDB CREATEROLE;
   
   -- Criar banco
   CREATE DATABASE biblivre4
     WITH OWNER = biblivre
          ENCODING = 'UTF8'
          CONNECTION LIMIT = -1;
   ```

5. **Conecte ao banco biblivre4:**
   - Clique com botão direito na conexão → "Create" → "Database"
   - Ou mude a conexão para usar o banco `biblivre4`

6. **Execute o script SQL:**
   - Abra o arquivo: `sql\biblivre4.sql`
   - Execute todo o conteúdo (pode levar alguns minutos)

---

## ✅ SOLUÇÃO 3: Resetar Senha do Postgres

Se quiser recuperar/resetar a senha do postgres:

### Windows:

1. **Pare o serviço PostgreSQL:**
   ```powershell
   Stop-Service postgresql-x64-18
   ```

2. **Edite o arquivo de configuração:**
   ```powershell
   notepad "C:\Program Files\PostgreSQL\18\data\pg_hba.conf"
   ```

3. **Encontre as linhas que começam com `host` e mude o método para `trust`:**
   ```
   # ANTES:
   host    all             all             127.0.0.1/32            scram-sha-256
   
   # DEPOIS:
   host    all             all             127.0.0.1/32            trust
   ```
   **Faça isso para todas as linhas com IPv4, IPv6 e local**

4. **Salve e feche o arquivo**

5. **Inicie o serviço:**
   ```powershell
   Start-Service postgresql-x64-18
   ```

6. **Agora pode conectar sem senha:**
   ```powershell
   & "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres
   ```

7. **Defina uma nova senha:**
   ```sql
   ALTER USER postgres PASSWORD 'novasenha123';
   \q
   ```

8. **Volte o pg_hba.conf para `scram-sha-256`** (mais seguro)

9. **Reinicie novamente:**
   ```powershell
   Restart-Service postgresql-x64-18
   ```

---

## 🎯 Verificar se o Banco foi Configurado

Depois de usar qualquer solução acima, teste:

```powershell
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U biblivre -d biblivre4 -c "SELECT COUNT(*) FROM global.versions;"
```

Se mostrar um número (como 20 ou 30), o banco está configurado! ✅

---

## 🚀 Próximo Passo: Rodar a Aplicação

Com o banco configurado, execute:

```powershell
mvn tomcat7:run
```

Aguarde a mensagem: `INFO: Server startup in ... ms`

Acesse: **http://localhost:8080/Biblivre4**

Login: `admin` / Senha: `admin`

---

## 🆘 Ainda com Problemas?

### Erro: "role biblivre already exists"
✅ **Normal!** O usuário já foi criado. Continue para o próximo passo.

### Erro: "database biblivre4 already exists"
✅ **Normal!** O banco já foi criado. Continue para importar os dados.

### Erro: "psql: error: connection refused"
❌ **PostgreSQL não está rodando**

Solução:
```powershell
Start-Service postgresql-x64-18
```

### Não consigo encontrar a senha em lugar nenhum
📝 Procure nestes locais:
- `C:\Program Files\PostgreSQL\18\installation_notes.txt`
- Emails da instalação
- Gerenciador de senhas

Se não encontrar, use a **SOLUÇÃO 1** (script automático) que não precisa da senha!

---

**💡 Dica:** A SOLUÇÃO 1 é a mais rápida e não requer senha!
