# 🎯 Configuração do Seu Projeto Biblivre-5

## ✅ Informações do Supabase

**Project**: Biblioteca  
**Project ID**: uqfvicgelyxmikqaiong  
**Database Host**: `db.uqfvicgelyxmikqaiong.supabase.co`  
**Database Port**: `5432`  
**Database Name**: `postgres`  
**Database User**: `postgres`  
**Database Password**: `OgirdoR!198500`

**Region**: Provavelmente São Paulo ou próximo

---

## 📋 Passo 1: Verificar o Supabase

### ✅ Banco Pronto para Receber a Aplicação

O Supabase já está configurado! O banco de dados será inicializado **automaticamente** durante o primeiro deploy no Render.

**Não precisa executar scripts SQL manualmente!** 🎉

O script `docker-entrypoint.sh` fará isso automaticamente quando o container iniciar.

### (Opcional) Verificar Configurações

Se quiser verificar o banco:

1. Acesse [https://supabase.com/dashboard](https://supabase.com/dashboard)
2. Selecione o projeto **Biblioteca**
3. Vá para **Settings > Database** para ver as informações de conexão

---

## 🚀 Passo 2: Deploy no Render

### 2.1 Criar Web Service

1. Acesse [https://render.com](https://render.com)
2. Faça login (crie conta se necessário)
3. No dashboard, clique em **New +** → **Web Service**
4. Clique em **Connect a repository**
5. Se necessário, autorize o GitHub
6. Selecione o repositório: `Romeiros-ux/Biblivre-5`

### 2.2 Configurar o Service

Preencha os campos:

| Campo | Valor |
|-------|-------|
| **Name** | `biblivre5` (ou outro nome de sua preferência) |
| **Region** | `Ohio (US East)` (Free tier) |
| **Branch** | `master` |
| **Environment** | `Docker` |
| **Dockerfile Path** | `./Dockerfile` |
| **Docker Command** | (deixe em branco) |

### 2.3 Configurar Variáveis de Ambiente

Role até a seção **Environment Variables** e adicione:

| Key | Value |
|-----|-------|
| `DB_HOST` | `db.uqfvicgelyxmikqaiong.supabase.co` |
| `DB_PORT` | `5432` |
| `DB_NAME` | `postgres` |
| `DB_USER` | `postgres` |
| `DB_PASSWORD` | `OgirdoR!198500` |
| `JAVA_OPTS` | `-Xmx512m -Xms256m` |

**Como adicionar:**
1. Clique em **Add Environment Variable**
2. Digite o **Key** e o **Value**
3. Repita para todas as variáveis

### 2.4 Selecionar o Plano

- Selecione **Free** ($0/mês)
- ⚠️ Nota: O plano Free hiberna após 15 min de inatividade

### 2.5 Criar o Service

1. Revise todas as configurações
2. Clique em **Create Web Service**
3. O Render começará o deploy automaticamente

---

## ⏱️ Passo 3: Aguardar o Deploy (10-15 minutos)

O Render irá:

1. ✅ Clonar o repositório
2. ✅ Construir a imagem Docker
3. ✅ Instalar dependências Maven
4. ✅ Compilar o projeto (pode levar tempo)
5. ✅ Iniciar o Tomcat
6. ✅ Conectar ao Supabase

**Você pode acompanhar o progresso nos logs em tempo real!**

---

## 🎉 Passo 4: Acessar Sua Aplicação

Após o deploy concluir:

1. No Render, você verá uma URL como:
   - `https://biblivre5.onrender.com`
   - Ou `https://[seu-nome].onrender.com`

2. Clique na URL ou acesse pelo navegador

3. A primeira vez pode levar ~30 segundos para carregar (inicialização)

---

## ✅ Verificações Pós-Deploy

- [ ] A página inicial carrega sem erros
- [ ] Consegue fazer login (usuário padrão)
- [ ] Pode criar/buscar registros
- [ ] Os dados são salvos no Supabase

---

## 🔐 Usuário Padrão do Biblivre

**Login**: `admin`  
**Senha**: `admin`

⚠️ **Importante**: Altere a senha após o primeiro login!

---

## 📊 Informações Úteis

### URL da Aplicação
- Será algo como: `https://biblivre5.onrender.com`

### URL do Supabase Dashboard
- [https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong](https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong)

### Repositório GitHub
- [https://github.com/Romeiros-ux/Biblivre-5](https://github.com/Romeiros-ux/Biblivre-5)

---

## 🆘 Troubleshooting

### Erro: "Cannot connect to database"
1. Confirme que as variáveis de ambiente estão corretas no Render
2. Verifique se o Supabase está online
3. Teste a conexão no Supabase:
   - Settings > Database > Connection info

### Banco de dados não foi inicializado
1. Veja os logs do deploy no Render
2. Procure por mensagens como "Initializing database schema..."
3. Se necessário, faça um novo deploy: Manual Deploy > Deploy latest commit

### Erro: "Build failed"
1. Veja os logs de build no Render
2. Verifique se os arquivos da pasta `lib/` estão no repositório
3. Se o erro for sobre repositórios Debian/apt-get, atualize o código (já corrigido!)
4. Tente fazer um novo deploy: Manual Deploy > Deploy latest commit

### Erro: "apt-get" ou "404 Not Found Debian"
- ✅ Já corrigido! Atualizamos para Tomcat 8.5
- Faça um novo deploy no Render

### Aplicação não carrega
1. Aguarde 30-60 segundos (plano Free é lento na primeira carga)
2. Veja os logs de runtime no Render
3. Confirme que o deploy foi concluído com sucesso

### App ficou offline (plano Free)
- O plano Free hiberna após 15 min sem uso
- Primeiro acesso após hibernação leva ~30s
- Solução: Upgrade para Starter ($7/mês) ou use UptimeRobot para ping

---

## 💰 Custos Atuais

- ✅ Supabase Free: $0/mês
- ✅ Render Free: $0/mês
- **Total: GRÁTIS** 🎉

---

## 🎯 Próximos Passos Opcionais

1. **Domínio Customizado**: Configure seu próprio domínio no Render
2. **Upgrade**: Considere Render Starter ($7/mês) para eliminar hibernação
3. **Backup**: Configure backup automático no Supabase
4. **Monitoramento**: Configure alertas no Render
5. **CDN**: Use CDN para assets estáticos (opcional)

---

## 📞 Suporte

- **Render Docs**: [render.com/docs](https://render.com/docs)
- **Supabase Docs**: [supabase.com/docs](https://supabase.com/docs)
- **Biblivre**: [biblivre.org.br](http://biblivre.org.br)

---

**🎊 Boa sorte com seu deploy!**

Se tiver dúvidas, me pergunte! 🚀
