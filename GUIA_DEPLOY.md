# 🚀 Guia de Deploy - Biblivre 5 (Spring 6.2.3 + Java 21 + Supabase)

## ✅ Trabalho Concluído

### 1. Upgrade do Spring Framework
- ✅ Spring Framework: **6.0.23 → 6.1.21 → 6.2.3**
- ✅ Migração Jakarta EE: **javax.servlet → jakarta.servlet**
- ✅ Servlet API: **6.0.0**
- ✅ JSP API: **3.1.0**
- ✅ Commons FileUpload: **2.0.0-M4** (Jakarta-compatible)
- ✅ Build validado com sucesso
- ✅ 63 arquivos corrigidos (@Serial annotations)

### 2. Banco de Dados Supabase
- ✅ **55 tabelas** criadas no schema `global`
- ✅ **6.158 traduções** inseridas (pt-BR, en-US, es)
- ✅ **17 configurações** do sistema
- ✅ Conexão testada e funcionando

### 3. Arquivos de Configuração
- ✅ `context.xml` atualizado com credenciais Supabase
- ✅ `pom.xml` atualizado para Spring 6.2.3
- ✅ Dockerfile criado para Java 21

---

## 📦 Opções de Deploy

### Opção 1: Docker Local (Teste)

```powershell
# 1. Construir imagem Docker
docker build -f Dockerfile.java21 -t biblivre5:latest .

# 2. Executar container
docker run -d -p 8080:8080 --name biblivre5 biblivre5:latest

# 3. Verificar logs
docker logs -f biblivre5

# 4. Acessar aplicação
# http://localhost:8080
```

### Opção 2: Render.com (Cloud)

#### 2.1. Preparar repositório
```powershell
# Commit e push das mudanças
git add .
git commit -m "feat: upgrade to Spring 6.2.3 and Java 21, configure Supabase"
git push origin appmod/java-upgrade-20251208185505
```

#### 2.2. Configurar Render
1. Acesse: https://render.com
2. **New** → **Web Service**
3. Conecte seu repositório GitHub: `Romeiros-ux/Biblivre-5`
4. Configure:
   - **Name**: `biblivre5-production`
   - **Branch**: `appmod/java-upgrade-20251208185505`
   - **Runtime**: `Docker`
   - **Dockerfile Path**: `Dockerfile.java21`
   - **Instance Type**: `Starter` ($7/mês) ou `Free`

#### 2.3. Variáveis de Ambiente (opcional)
Se quiser usar variáveis de ambiente no Render:
```
DATABASE_URL=jdbc:postgresql://aws-0-us-west-2.pooler.supabase.com:5432/postgres?sslmode=require
DB_USERNAME=postgres.ouobsvpkwqbzeeapcpgw
DB_PASSWORD=OgirdoR!198500
```

### Opção 3: Azure App Service

```powershell
# 1. Login no Azure
az login

# 2. Criar grupo de recursos
az group create --name biblivre-rg --location eastus

# 3. Criar plano de serviço
az appservice plan create --name biblivre-plan --resource-group biblivre-rg --is-linux --sku B1

# 4. Criar Web App com Docker
az webapp create --resource-group biblivre-rg --plan biblivre-plan --name biblivre5-app --deployment-container-image-name biblivre5:latest

# 5. Configurar variáveis de ambiente
az webapp config appsettings set --resource-group biblivre-rg --name biblivre5-app --settings \
  DATABASE_URL="jdbc:postgresql://aws-0-us-west-2.pooler.supabase.com:5432/postgres?sslmode=require" \
  DB_USERNAME="postgres.ouobsvpkwqbzeeapcpgw" \
  DB_PASSWORD="OgirdoR!198500"
```

---

## 🧪 Testes Locais Antes do Deploy

### 1. Verificar Build Maven
```powershell
mvn clean package -DskipTests
```
**Resultado esperado**: `BUILD SUCCESS`

### 2. Testar Conexão com Supabase
```powershell
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" VerifySupabaseDB
```
**Resultado esperado**: 
- 55 tabelas no schema `global`
- 6.158 registros em `translations`
- 17 registros em `configurations`

### 3. Construir e Testar Docker Localmente
```powershell
# Build
docker build -f Dockerfile.java21 -t biblivre5:test .

# Run
docker run -d -p 8080:8080 --name biblivre5-test biblivre5:test

# Logs
docker logs -f biblivre5-test

# Teste de saúde
curl http://localhost:8080

# Parar e remover
docker stop biblivre5-test
docker rm biblivre5-test
```

---

## 🔍 Verificações Pós-Deploy

### 1. Health Check
```bash
curl -I https://seu-app.render.com
```
**Esperado**: `HTTP/1.1 200 OK`

### 2. Verificar Logs
- **Render**: Dashboard → Logs
- **Docker**: `docker logs biblivre5`
- **Azure**: `az webapp log tail --name biblivre5-app --resource-group biblivre-rg`

### 3. Testar Funcionalidades Principais
- [ ] Acesso à página inicial
- [ ] Login administrativo
- [ ] Pesquisa bibliográfica
- [ ] Cadastro de usuários
- [ ] Empréstimos/Devoluções

---

## 📋 Checklist de Deploy

### Pré-Deploy
- [x] Build Maven executado com sucesso
- [x] Banco Supabase inicializado (55 tabelas)
- [x] `context.xml` configurado com Supabase
- [x] Dockerfile atualizado para Java 21
- [x] Spring Framework 6.2.3 integrado
- [x] Jakarta EE migration completa

### Deploy
- [ ] Escolher plataforma (Render/Azure/Docker local)
- [ ] Construir imagem Docker
- [ ] Configurar variáveis de ambiente (se necessário)
- [ ] Fazer deploy da aplicação
- [ ] Aguardar inicialização (2-5 minutos)

### Pós-Deploy
- [ ] Verificar health check (HTTP 200)
- [ ] Acessar página inicial
- [ ] Verificar logs (sem erros críticos)
- [ ] Testar login
- [ ] Testar funcionalidades principais

---

## 🛠️ Troubleshooting

### Problema: "Connection refused" no Supabase
**Solução**: Verificar se o IP do servidor está na whitelist do Supabase
```sql
-- No Supabase SQL Editor, verificar conexões ativas:
SELECT * FROM pg_stat_activity WHERE datname = 'postgres';
```

### Problema: "ClassNotFoundException: javax.servlet"
**Solução**: Já corrigido! Migração para `jakarta.servlet` concluída.

### Problema: Build Maven falha
```powershell
# Limpar cache Maven
mvn clean install -U

# Reinstalar dependências locais
cd lib
# Execute os comandos mvn install:install-file...
```

### Problema: Tomcat não inicia
- Verificar logs: `/usr/local/tomcat/logs/catalina.out`
- Verificar porta 8080 disponível
- Verificar memória disponível (mínimo 512MB)

---

## 📊 Especificações Técnicas

### Stack Tecnológica Final
- **Java**: OpenJDK 21
- **Spring Framework**: 6.2.3
- **Jakarta EE**: 10 (Servlet 6.0, JSP 3.1)
- **Tomcat**: 10.1
- **PostgreSQL Driver**: 42.7.2
- **Commons FileUpload**: 2.0.0-M4
- **Maven**: 3.9

### Recursos Mínimos
- **RAM**: 512 MB (recomendado: 1 GB)
- **CPU**: 1 vCPU
- **Disco**: 2 GB
- **Conexões DB**: Pool de 50 conexões

### Segurança
- ✅ SSL/TLS habilitado (Supabase)
- ✅ Conexões via pooler do Supabase
- ⚠️ Credenciais hardcoded no `context.xml` (considerar variáveis de ambiente)

---

## 🎯 Próximos Passos Recomendados

1. **Deploy em Render.com**
   - Mais simples e rápido
   - $7/mês ou Free tier
   - Deploy automático via Git

2. **Configurar CI/CD**
   - GitHub Actions para build automático
   - Testes automatizados
   - Deploy automático em produção

3. **Monitoramento**
   - Configurar alertas de uptime
   - Monitorar performance do banco
   - Logs centralizados

4. **Segurança**
   - Mover credenciais para variáveis de ambiente
   - Configurar HTTPS
   - Revisar permissões do banco

---

## 📞 Suporte

### Recursos Criados
- `Dockerfile.java21` - Dockerfile atualizado
- `VerifySupabaseDB.java` - Script de verificação do banco
- `SimpleInitDB.java` - Executor de SQL
- `init-supabase-clean.bat` - Inicialização completa do banco

### Documentação
- [Spring Framework 6.2.3](https://docs.spring.io/spring-framework/docs/6.2.3/reference/html/)
- [Jakarta EE 10](https://jakarta.ee/release/10/)
- [Tomcat 10.1](https://tomcat.apache.org/tomcat-10.1-doc/)
- [Supabase Docs](https://supabase.com/docs)

---

**Status**: ✅ **Pronto para Deploy**  
**Última atualização**: 9 de dezembro de 2025  
**Branch**: `appmod/java-upgrade-20251208185505`
