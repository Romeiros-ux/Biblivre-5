# ⚡ SOLUÇÃO RÁPIDA - Rodar Biblivre Local

## ❌ Problema Atual

O projeto tem dependências complexas do JZKit2 que não estão mais disponíveis nos repositórios Maven públicos. A compilação local é complicada.

## ✅ SOLUÇÃO MAIS FÁCIL: Usar Docker

### Passo 1: Instalar Docker Desktop

1. Baixe: https://www.docker.com/products/docker-desktop/
2. Instale e reinicie o Windows se necessário
3. Abra o Docker Desktop e aguarde iniciar

### Passo 2: Configurar Banco de Dados

Execute o PowerShell como Administrador:

```powershell
cd "C:\Users\user\Documents\GitHub\Barbearia\Biblivre-5"
.\setup-database-simples.ps1
```

### Passo 3: Rodar com Docker

```powershell
# Construir imagem
docker build -t biblivre5 .

# Rodar container
docker run -d -p 8080:8080 `
  -e DB_HOST=host.docker.internal `
  -e DB_PORT=5432 `
  -e DB_NAME=biblivre4 `
  -e DB_USER=biblivre `
  -e DB_PASSWORD=abracadabra `
  --name biblivre biblivre5
```

### Passo 4: Acessar

Aguarde 1-2 minutos e acesse: **http://localhost:8080**

Login: `admin` / Senha: `admin`

---

## 🔧 ALTERNATIVA 2: Usar o WAR pré-compilado

Se você tiver o WAR já compilado de outra fonte:

### 1. Baixar Tomcat

```powershell
# Baixar Tomcat 8.5
Invoke-WebRequest -Uri "https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100-windows-x64.zip" -OutFile "tomcat.zip"

# Extrair
Expand-Archive -Path "tomcat.zip" -DestinationPath "C:\tomcat"
```

### 2. Copiar Driver PostgreSQL

```powershell
# Baixar driver PostgreSQL
Invoke-WebRequest -Uri "https://jdbc.postgresql.org/download/postgresql-42.5.4.jar" -OutFile "C:\tomcat\apache-tomcat-8.5.100\lib\postgresql-42.5.4.jar"
```

### 3. Copiar WAR (se tiver)

```powershell
Copy-Item "caminho\para\Biblivre4.war" "C:\tomcat\apache-tomcat-8.5.100\webapps\"
```

### 4. Iniciar Tomcat

```powershell
C:\tomcat\apache-tomcat-8.5.100\bin\startup.bat
```

Acesse: **http://localhost:8080/Biblivre4**

---

## 🆘 Por que a compilação local não funciona?

O projeto Biblivre usa bibliotecas antigas (JZKit2) que:
- Não estão mais em repositórios Maven públicos
- Usam HTTP (bloqueado pelo Maven moderno)
- Têm dependências transitivas complexas

**Docker resolve** porque:
- ✅ O Dockerfile já tem as dependências instaladas
- ✅ Usa Java 8 correto
- ✅ Ambiente isolado e reproduzível

---

## 📋 Comandos Úteis Docker

```powershell
# Ver logs
docker logs biblivre

# Parar container
docker stop biblivre

# Iniciar novamente
docker start biblivre

# Remover container
docker rm -f biblivre

# Ver containers rodando
docker ps
```

---

## 🎯 Recomendação

**Use Docker!** É a forma mais rápida e confiável de rodar o Biblivre-5 localmente sem se preocupar com dependências complexas do Maven.

Se não quiser instalar Docker, considere usar a versão em nuvem (veja `QUICKSTART.md`).
