# 🚀 Guia Rápido: Deploy Biblivre-5 com Supabase + Render

## ⚡ Setup em 5 passos

### 1️⃣ Configurar Supabase (5 min)

1. Acesse [supabase.com](https://supabase.com) e crie conta
2. Crie um novo projeto:
   - Nome: `biblivre-db`
   - Senha: Crie uma senha forte (guarde!)
   - Região: `South America (São Paulo)`
3. Vá para **SQL Editor** e execute:
   - Primeiro: `sql/supabase-init.sql`
   - Depois: `sql/biblivre4.sql`
4. Anote as credenciais em **Settings > Database**:
   ```
   Host: db.xxxxxxxxxxxxx.supabase.co
   Port: 5432
   Database: postgres
   User: postgres
   Password: [sua senha]
   ```

### 2️⃣ Preparar código (2 min)

```bash
# Clone ou vá para a pasta do projeto
cd Biblivre-5

# Adicione os novos arquivos ao Git
git add .
git commit -m "Configure deploy para Render + Supabase"
git push
```

### 3️⃣ Deploy no Render (5 min)

1. Acesse [render.com](https://render.com) e crie conta
2. Clique **New +** → **Web Service**
3. Conecte seu repositório GitHub/GitLab
4. Configure:
   - **Name**: `biblivre5`
   - **Environment**: `Docker`
   - **Plan**: `Free`

### 4️⃣ Configurar variáveis de ambiente

Adicione no Render:

```
DB_HOST=db.xxxxxxxxxxxxx.supabase.co
DB_PORT=5432
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=[sua senha do Supabase]
JAVA_OPTS=-Xmx512m -Xms256m
```

### 5️⃣ Deploy! 🎉

- Clique em **Create Web Service**
- Aguarde 10-15 minutos
- Acesse sua URL: `https://biblivre5.onrender.com`

---

## ✅ Checklist pós-deploy

- [ ] Aplicação abre sem erros
- [ ] Consegue fazer login
- [ ] Busca funciona
- [ ] Pode criar registros
- [ ] Salva dados no Supabase

---

## 🆘 Problemas comuns

### ❌ "Cannot connect to database"
- Verifique as variáveis de ambiente no Render
- Confirme que executou os scripts SQL no Supabase
- Teste a conexão no Supabase: Settings > Database > Connection test

### ❌ "Out of memory error"
- Reduza JAVA_OPTS para: `-Xmx400m -Xms200m`
- Considere upgrade para plano Starter ($7/mês)

### ❌ "Application not responding"
- Plano Free hiberna após 15 min inativo
- Primeiro acesso após hibernação leva ~30s
- Upgrade para Starter elimina hibernação

### ❌ Build falha
- Verifique se a pasta `lib/` está no repositório
- Veja os logs de build no Render
- Tente rebuild manual

---

## 💡 Dicas

### Evitar hibernação (plano Free)
Use um serviço de ping como [UptimeRobot](https://uptimerobot.com):
- Ping a cada 5 minutos em `https://seu-app.onrender.com/status`

### Melhorar performance
1. Use CDN para assets estáticos
2. Configure cache no navegador
3. Otimize imagens
4. Considere usar Connection Pooling do Supabase

### Backup
- Supabase faz backup automático diário (plano Free: 7 dias)
- Plano Pro: backup point-in-time

---

## 🎯 Próximos passos recomendados

1. **Domínio customizado**: Configure seu próprio domínio
2. **Monitoramento**: Configure alertas no Render
3. **SSL**: Já incluído automaticamente!
4. **Storage**: Configure bucket no Supabase para uploads
5. **Email**: Configure SMTP para notificações

---

## 📊 Custos estimados

| Serviço | Plano | Custo | Recomendação |
|---------|-------|-------|--------------|
| Render | Free | $0 | Testes/Dev |
| Render | Starter | $7/mês | Produção pequena |
| Supabase | Free | $0 | Até 500MB DB |
| Supabase | Pro | $25/mês | Produção |
| **Total (Free)** | | **$0/mês** | 🎉 |
| **Total (Produção)** | | **$32/mês** | ✨ |

---

## 📞 Suporte

- **Render**: [render.com/docs](https://render.com/docs)
- **Supabase**: [supabase.com/docs](https://supabase.com/docs)
- **Biblivre**: [biblivre.org.br](http://biblivre.org.br)

---

**Feito com ❤️ para bibliotecas brasileiras**
