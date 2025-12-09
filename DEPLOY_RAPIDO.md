# 🎯 Deploy Rápido - Biblivre 5

## ⚡ Opção 1: Deploy Direto no Render (RECOMENDADO)

### Passo 1: Preparar o Repositório
```powershell
# Commit das mudanças
git add .
git commit -m "feat: upgrade Spring 6.2.3, Java 21, Supabase ready"
git push origin appmod/java-upgrade-20251208185505
```

### Passo 2: Deploy no Render
1. Acesse: https://dashboard.render.com
2. Clique em **New +** → **Web Service**
3. Conecte o GitHub (autorize se necessário)
4. Selecione: `Romeiros-ux/Biblivre-5`
5. Configure:
   ```
   Name: biblivre5
   Branch: appmod/java-upgrade-20251208185505
   Runtime: Docker
   Dockerfile Path: Dockerfile.java21
   Instance Type: Starter ($7/mês) ou Free
   ```
6. Clique em **Create Web Service**
7. Aguarde 5-10 minutos para o build e deploy

### Passo 3: Verificar
- URL será: `https://biblivre5.onrender.com`
- Aguarde o primeiro acesso (pode demorar 30s se Free tier)
- Logs disponíveis no dashboard do Render

---

## 🐳 Opção 2: Docker Local (Para Testes)

### Requisitos
- Docker Desktop instalado: https://www.docker.com/products/docker-desktop

### Comandos
```powershell
# 1. Build da imagem (15-20 minutos na primeira vez)
docker build -f Dockerfile.java21 -t biblivre5:local .

# 2. Executar container
docker run -d -p 8080:8080 --name biblivre5 biblivre5:local

# 3. Acompanhar logs
docker logs -f biblivre5

# 4. Acessar aplicação
# Abrir navegador: http://localhost:8080

# 5. Parar e remover (quando terminar)
docker stop biblivre5
docker rm biblivre5
```

---

## ☁️ Opção 3: Azure (Para Produção Empresarial)

### Passo 1: Instalar Azure CLI
```powershell
# Download: https://aka.ms/installazurecliwindows
# Ou via winget:
winget install Microsoft.AzureCLI
```

### Passo 2: Login e Deploy
```powershell
# Login
az login

# Deploy direto do código
az webapp up --name biblivre5-prod --resource-group biblivre-rg --runtime "TOMCAT:10.1-java21" --sku B1

# Ou deploy via Docker
az acr build --registry biblivre5registry --image biblivre5:latest -f Dockerfile.java21 .
az webapp create --resource-group biblivre-rg --plan biblivre-plan --name biblivre5-prod --deployment-container-image-name biblivre5registry.azurecr.io/biblivre5:latest
```

---

## 🎯 Qual Opção Escolher?

| Critério | Render | Docker Local | Azure |
|----------|--------|--------------|-------|
| **Facilidade** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Velocidade** | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| **Custo** | Free ou $7/mês | Grátis | $13+/mês |
| **Produção** | ⭐⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐⭐ |
| **Escalabilidade** | ⭐⭐⭐ | ⭐ | ⭐⭐⭐⭐⭐ |

### Recomendação:
- **Teste/Demo**: Render Free Tier
- **MVP/Startup**: Render Starter ($7/mês)
- **Produção**: Azure App Service

---

## ✅ Status do Projeto

### Concluído
- [x] Spring Framework 6.2.3
- [x] Java 21 compatível
- [x] Jakarta EE migrado
- [x] Banco Supabase inicializado (55 tabelas, 6.158 traduções)
- [x] Build validado
- [x] Dockerfile criado

### Pronto Para
- [x] Deploy em Render
- [x] Deploy em Azure
- [x] Teste em Docker local
- [x] Integração contínua

---

## 🚨 Troubleshooting Rápido

### Build no Render falha
- Verifique que o branch correto está selecionado
- Confirme que `Dockerfile.java21` existe no repositório
- Aguarde até 15 minutos na primeira build

### Aplicação não inicia
```powershell
# Verificar logs no Render
# Dashboard → Seu serviço → Logs

# Verificar conexão Supabase
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" VerifySupabaseDB
```

### Erro de memória
- Render Free: limitado a 512MB (pode ser insuficiente)
- Solução: upgrade para Starter ($7/mês) com 1GB RAM

---

## 📊 Informações Técnicas

### Banco de Dados Supabase
- **Host**: aws-0-us-west-2.pooler.supabase.com
- **Porta**: 5432
- **Database**: postgres
- **Schema**: global
- **Tabelas**: 55
- **SSL**: Obrigatório

### Aplicação
- **Java**: 21
- **Spring**: 6.2.3
- **Tomcat**: 10.1
- **Porta**: 8080
- **Contexto**: / (ROOT)

---

## 🎬 Começar Agora

**Recomendação para começar AGORA:**

```powershell
# 1. Commit
git add .
git commit -m "ready for deploy"
git push

# 2. Abrir Render
start https://dashboard.render.com/new/web

# 3. Seguir os passos da Opção 1 acima
```

**Tempo estimado**: 15 minutos até a aplicação estar no ar! 🚀
