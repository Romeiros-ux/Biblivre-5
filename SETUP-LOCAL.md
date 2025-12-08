# 🚀 GUIA DE SETUP LOCAL - BIBLIVRE-5

## ✅ Pré-requisitos Verificados

- ✅ Java 8 (OpenJDK 1.8.0_472)
- ✅ Maven 3.9.11
- ✅ PostgreSQL 18
- ✅ Dependências Maven locais instaladas

## 📦 Etapas de Configuração

### 1️⃣ Configurar Banco de Dados PostgreSQL

**Opção A: Usar pgAdmin (Recomendado para Windows)**

1. Abra o **pgAdmin 4** (vem instalado com PostgreSQL)
2. Conecte ao servidor local usando a senha que você definiu na instalação
3. Clique com botão direito em "Login/Group Roles" → "Create" → "Login/Group Role"
   - **Name**: `biblivre`
   - **Definition** → **Password**: `abracadabra`
   - **Privileges** → Marque: `Can login?`, `Superuser?`, `Create databases?`, `Create roles?`
4. Clique com botão direito em "Databases" → "Create" → "Database"
   - **Database**: `biblivre4`
   - **Owner**: `biblivre`
   - **Encoding**: `UTF8`
5. Clique em `biblivre4` → **Tools** → **Query Tool**
6. Abra e execute o arquivo: `sql\biblivre4.sql`

**Opção B: Linha de Comando**

Se você souber a senha do postgres, execute:

```powershell
# Criar usuário e banco
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -c "CREATE ROLE biblivre LOGIN ENCRYPTED PASSWORD 'abracadabra' SUPERUSER INHERIT CREATEDB CREATEROLE;"
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -c "CREATE DATABASE biblivre4 WITH OWNER = biblivre ENCODING = 'UTF8';"

# Importar estrutura
& "C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d biblivre4 -f sql\biblivre4.sql
```

**Opção C: Configurar autenticação trust (Desenvolvimento Local)**

1. Abra o arquivo `pg_hba.conf`:
   - Localização: `C:\Program Files\PostgreSQL\18\data\pg_hba.conf`
2. Localize as linhas que começam com `host all all 127.0.0.1/32`
3. Altere `scram-sha-256` ou `md5` para `trust`:
   ```
   # IPv4 local connections:
   host    all             all             127.0.0.1/32            trust
   ```
4. Salve o arquivo
5. Reinicie o serviço PostgreSQL:
   ```powershell
   Restart-Service postgresql-x64-18
   ```
6. Execute o setup novamente:
   ```powershell
   .\setup-database.bat
   ```

### 2️⃣ Compilar o Projeto

```powershell
.\build.bat
```

Este script irá:
- Baixar todas as dependências do Maven
- Compilar o código Java
- Gerar o arquivo `Biblivre4.war` na pasta `target\`

### 3️⃣ Rodar a Aplicação

**Opção A: Usar Maven Tomcat Plugin (Mais Fácil)**

```powershell
mvn tomcat7:run
```

A aplicação estará disponível em: **http://localhost:8080/Biblivre4**

**Opção B: Usar Tomcat Standalone**

1. Baixe o [Apache Tomcat 8.5](https://tomcat.apache.org/download-80.cgi)
2. Extraia em uma pasta (ex: `C:\tomcat`)
3. Copie o WAR:
   ```powershell
   Copy-Item target\Biblivre4.war C:\tomcat\webapps\
   ```
4. Inicie o Tomcat:
   ```powershell
   C:\tomcat\bin\startup.bat
   ```
5. Acesse: **http://localhost:8080/Biblivre4**

**Opção C: Usar Docker (Mais Simples)**

```powershell
docker-compose up --build
```

Acesse: **http://localhost:8080**

## 🔧 Configuração do Tomcat (se usar standalone)

1. Copie o driver PostgreSQL para o Tomcat:
   ```powershell
   Copy-Item ~\.m2\repository\postgresql\postgresql\9.1-901.jdbc4\postgresql-9.1-901.jdbc4.jar C:\tomcat\lib\
   ```

2. Configure o contexto em `C:\tomcat\conf\Catalina\localhost\Biblivre4.xml`:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <Context>
       <Resource name="jdbc/biblivre4" 
                 auth="Container"
                 type="javax.sql.DataSource"
                 maxTotal="20"
                 maxIdle="10"
                 maxWaitMillis="-1"
                 username="biblivre"
                 password="abracadabra"
                 driverClassName="org.postgresql.Driver"
                 url="jdbc:postgresql://localhost:5432/biblivre4"/>
   </Context>
   ```

## 🎯 Verificar Instalação

1. Acesse: http://localhost:8080/Biblivre4
2. Login padrão:
   - **Usuário**: `admin`
   - **Senha**: `admin`

## ❌ Solução de Problemas

### Erro de conexão com PostgreSQL

```
ERRO: Connection refused
```

**Solução**: Verifique se o PostgreSQL está rodando:
```powershell
Get-Service postgresql-x64-18
```

Se estiver parado:
```powershell
Start-Service postgresql-x64-18
```

### Erro de autenticação

```
FATAL: password authentication failed for user "postgres"
```

**Solução**: Use o pgAdmin ou configure autenticação trust (ver Opção C acima)

### Erro de compilação Maven

```
BUILD FAILURE
```

**Solução**: Verifique se todas as dependências locais foram instaladas:
```powershell
ls ~\.m2\repository\org\jzkit\
ls ~\.m2\repository\org\marc4j\
ls ~\.m2\repository\br\org\biblivre\
```

Se alguma estiver faltando, reinstale:
```powershell
cd lib
.\maven_deps.sh  # Linux/Mac
# ou execute os comandos individualmente
```

### Porta 8080 já em uso

```
Address already in use: bind
```

**Solução**: Use outra porta:
```powershell
mvn tomcat7:run -Dmaven.tomcat.port=8081
```

Acesse: http://localhost:8081/Biblivre4

## 📚 Próximos Passos

1. ✅ Configurar banco de dados
2. ✅ Compilar projeto
3. ✅ Rodar aplicação
4. 📖 Explorar funcionalidades
5. 🎨 Personalizar (ver documentação)

## 🆘 Precisa de Ajuda?

- Documentação completa: `DEVELOPMENT.md`
- Deploy em nuvem: `QUICKSTART.md`
- Issues no GitHub: https://github.com/biblivre/biblivre

---

**Desenvolvido por Biblivre.org.br**
