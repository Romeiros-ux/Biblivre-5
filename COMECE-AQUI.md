# ✅ SETUP BIBLIVRE-5 - STATUS ATUAL

## 🎉 O que já está pronto:

### ✅ 1. Ambiente de Desenvolvimento
- Java 8 (OpenJDK 1.8.0_472) ✓
- Maven 3.9.11 ✓
- PostgreSQL 18 ✓
- Todas as dependências Maven locais instaladas ✓

### ✅ 2. Compilação
- Projeto compilado com sucesso ✓
- Arquivo WAR gerado em: `target\Biblivre4.war` ✓

## ⏳ Próximos passos para rodar localmente:

### 1️⃣ Configurar Banco de Dados

**❓ Não sabe a senha do postgres?** → Veja: **[CONFIGURAR-BANCO.md](CONFIGURAR-BANCO.md)** (3 soluções!)

Você precisa criar o banco de dados PostgreSQL. Escolha uma opção:

#### **Opção A: Script Automático (MAIS RÁPIDO)**

Execute no PowerShell como Administrador:
```powershell
cd "C:\Users\user\Documents\GitHub\Barbearia\Biblivre-5"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\setup-database-simples.ps1
```

✅ Pronto! Pule para o passo 2️⃣

#### **Opção B: Usar pgAdmin (Interface Gráfica)**

1. Abra o **pgAdmin 4** (instalado com PostgreSQL)
2. Conecte ao servidor local (localhost)
3. **Criar usuário biblivre:**
   - Clique com botão direito em "Login/Group Roles" → "Create" → "Login/Group Role"
   - **Name**: `biblivre`
   - **Definition** → **Password**: `abracadabra`
   - **Privileges**: Marque todas as opções (Can login, Superuser, Create databases, Create roles)
   - Clique "Save"

4. **Criar banco de dados:**
   - Clique com botão direito em "Databases" → "Create" → "Database"
   - **Database**: `biblivre4`
   - **Owner**: `biblivre`
   - **Encoding**: `UTF8`
   - Clique "Save"

5. **Importar estrutura:**
   - Clique em `biblivre4` → **Tools** → **Query Tool**
   - Clique no ícone de abrir arquivo
   - Selecione: `sql\biblivre4.sql`
   - Clique no botão "Execute" (▶)
   - Aguarde alguns segundos até concluir

✅ Banco configurado!

#### **Opção B: Linha de Comando (se souber a senha do postgres)**

```powershell
# 1. Criar usuário
& "C:\Program Files\PostgreSQL\18\bin\createuser.exe" -U postgres -s -d -r -l biblivre

# 2. Definir senha (quando solicitado, use: abracadabra)
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -c "ALTER USER biblivre PASSWORD 'abracadabra';"

# 3. Criar banco
& "C:\Program Files\PostgreSQL\18\bin\createdb.exe" -U postgres -O biblivre biblivre4

# 4. Importar estrutura
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U biblivre -d biblivre4 -f sql\biblivre4.sql
```

### 2️⃣ Rodar a Aplicação

Depois de configurar o banco de dados, você pode rodar de 2 formas:

#### **Opção A: Usar Maven Tomcat Plugin (Mais Simples)**

```powershell
mvn tomcat7:run
```

Aguarde a mensagem: `INFO: Server startup in ... ms`

Acesse: **http://localhost:8080/Biblivre4**

#### **Opção B: Usar Tomcat Standalone**

1. Baixe o [Apache Tomcat 8.5](https://tomcat.apache.org/download-80.cgi) (ZIP)
2. Extraia em `C:\tomcat`
3. Copie o driver PostgreSQL:
   ```powershell
   Copy-Item "$env:USERPROFILE\.m2\repository\postgresql\postgresql\9.1-901.jdbc4\postgresql-9.1-901.jdbc4.jar" "C:\tomcat\lib\"
   ```
4. Copie o WAR:
   ```powershell
   Copy-Item "target\Biblivre4.war" "C:\tomcat\webapps\"
   ```
5. Inicie o Tomcat:
   ```powershell
   C:\tomcat\bin\startup.bat
   ```
6. Acesse: **http://localhost:8080/Biblivre4**

## 🔐 Login Padrão

Após acessar a aplicação:
- **Usuário**: `admin`
- **Senha**: `admin`

## 📋 Comandos Úteis

```powershell
# Recompilar após mudanças no código
mvn clean package -DskipTests

# Rodar com Maven Tomcat
mvn tomcat7:run

# Rodar em outra porta
mvn tomcat7:run -Dmaven.tomcat.port=8081

# Verificar se PostgreSQL está rodando
Get-Service postgresql-x64-18

# Iniciar PostgreSQL se parado
Start-Service postgresql-x64-18

# Verificar se porta 8080 está ocupada
netstat -ano | findstr :8080
```

## ❌ Solução de Problemas

### Erro: "Connection refused" ao iniciar aplicação

**Causa**: Banco de dados não está configurado ou PostgreSQL não está rodando

**Solução**:
1. Verifique se PostgreSQL está rodando: `Get-Service postgresql-x64-18`
2. Se Status = "Stopped", inicie: `Start-Service postgresql-x64-18`
3. Confirme que criou o banco de dados biblivre4 (ver passo 1️⃣)

### Erro: "Port 8080 already in use"

**Causa**: Outra aplicação usando a porta 8080

**Solução**: Use outra porta
```powershell
mvn tomcat7:run -Dmaven.tomcat.port=8081
```
Acesse: http://localhost:8081/Biblivre4

### Erro ao acessar pgAdmin

**Causa**: Não sabe a senha do postgres

**Solução**:
1. Procure no arquivo: `C:\Program Files\PostgreSQL\18\installation_notes.txt`
2. Ou reinstale o PostgreSQL e anote a senha

### Aplicação não abre (erro 404)

**Causa**: Tomcat não encontrou o contexto de datasource

**Solução**: Verifique se o arquivo `WebContent\META-INF\context.xml` existe e configure o Tomcat corretamente (ver documentação Tomcat)

## 📚 Documentação Adicional

- `SETUP-LOCAL.md` - Guia detalhado de configuração local
- `DEVELOPMENT.md` - Guia de desenvolvimento
- `QUICKSTART.md` - Deploy em nuvem (Supabase + Render)
- `README.md` - Informações gerais do projeto

## 🆘 Precisa de Ajuda?

Quando pedir ajuda, informe:
1. Qual opção de banco de dados você usou (A ou B)
2. Se o banco foi criado com sucesso
3. Qual comando de execução está usando
4. A mensagem de erro completa (se houver)

---

**Desenvolvido por Biblivre.org.br**
**Versão: 5.0.5**
