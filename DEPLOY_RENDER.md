# 🚀 Guia de Deploy - Biblivre 5 no Render.com

## ✅ Pré-requisitos Concluídos

- ✅ Código atualizado para Spring 6.2.3 + Java 21 + Jakarta EE 10
- ✅ Teste local bem-sucedido (localhost:8080)
- ✅ Banco de dados Supabase configurado
- ✅ Dockerfile.java21 otimizado
- ✅ Alterações commitadas no branch `appmod/java-upgrade-20251208185505`

## 📋 Passo a Passo para Deploy

### 1️⃣ Acessar Render.com Dashboard

1. Acesse: https://dashboard.render.com/
2. Faça login na sua conta Render

### 2️⃣ Criar Novo Web Service

1. Clique em **"New +"** → **"Web Service"**
2. Conecte seu repositório GitHub: **Romeiros-ux/Biblivre-5**
3. Selecione o branch: **`appmod/java-upgrade-20251208185505`**

### 3️⃣ Configurar o Serviço

**Configurações Básicas:**
- **Name:** `biblivre5`
- **Region:** `Oregon (US West)`
- **Branch:** `appmod/java-upgrade-20251208185505`
- **Root Directory:** (deixe em branco)
- **Environment:** `Docker`
- **Dockerfile Path:** `./Dockerfile.java21`

**Plan:**
- Escolha: **Starter** ($7/mês) ou superior
  - ⚠️ Free tier não suporta Docker com 512MB RAM necessário

### 4️⃣ Variáveis de Ambiente

Configure estas variáveis na seção **Environment Variables**:

```
JDBC_URL=jdbc:postgresql://aws-0-us-west-2.pooler.supabase.com:5432/postgres?sslmode=require
JDBC_USERNAME=postgres.ouobsvpkwqbzeeapcpgw
JDBC_PASSWORD=OgirdoR!198500
JAVA_OPTS=-Xmx768m -Xms256m -Djava.security.egd=file:/dev/./urandom
```

### 5️⃣ Configurações Adicionais

**Health Check:**
- **Path:** `/`
- **Interval:** 60 segundos

**Auto-Deploy:**
- ✅ Marque "Auto-Deploy" para deploys automáticos no push

### 6️⃣ Iniciar Deploy

1. Clique em **"Create Web Service"**
2. Aguarde o build (~10-15 minutos na primeira vez)
3. Monitore os logs em tempo real

### 7️⃣ Verificar Deploy

Após conclusão do deploy:

1. Acesse a URL fornecida pelo Render (ex: `https://biblivre5.onrender.com`)
2. Você verá a tela de login do Biblivre
3. **Credenciais padrão:**
   - Usuário: `admin`
   - Senha: `admin`

## 📊 Monitoramento

**Logs em Tempo Real:**
```bash
# No dashboard do Render, acesse:
Logs → Shell → View Logs
```

**Métricas:**
- CPU, Memória e Requests no dashboard
- Health checks automáticos a cada 60s

## 🔧 Troubleshooting

### Se o deploy falhar:

1. **Verificar logs de build:**
   - Procure por erros no Maven ou Docker
   - Confirme que o WAR foi gerado: `Biblivre4.war`

2. **Verificar conexão com banco:**
   - Teste as credenciais do Supabase
   - Confirme que o IP do Render está liberado no Supabase

3. **Verificar memória:**
   - Plano Starter tem 512MB RAM
   - Se necessário, aumente para Standard (2GB)

### Se a aplicação não carregar:

1. Acesse os logs: `docker logs biblivre5`
2. Procure por:
   - `Server startup in [X] milliseconds` ✅
   - Erros de conexão ao banco ❌
   - Erros de memória (OutOfMemory) ❌

## 🎯 URLs Importantes

- **Aplicação:** `https://biblivre5.onrender.com`
- **Dashboard Render:** `https://dashboard.render.com/`
- **Supabase Dashboard:** `https://supabase.com/dashboard`
- **Repositório:** `https://github.com/Romeiros-ux/Biblivre-5`

## 📝 Notas

- **Primeiro acesso pode ser lento** - Render "hiberna" apps gratuitas após 15min de inatividade
- **Build automático** - Todo push no branch aciona novo deploy
- **Rollback disponível** - Pode reverter para deploys anteriores no dashboard

## ✅ Checklist Pós-Deploy

- [ ] Acessar URL da aplicação
- [ ] Fazer login (admin/admin)
- [ ] Verificar interface carregando corretamente
- [ ] Testar funcionalidade básica (pesquisa, menu)
- [ ] Alterar senha padrão do admin
- [ ] Configurar backup automático (opcional)

---

**Status:** ✅ Pronto para deploy!  
**Branch:** `appmod/java-upgrade-20251208185505`  
**Última atualização:** 9 de dezembro de 2025
