# 🚀 Deploy do Biblivre-5 no Render com Supabase

Este guia explica como fazer o deploy do Biblivre-5 no Render usando Supabase como banco de dados PostgreSQL.

## 📋 Pré-requisitos

1. Conta no [Render](https://render.com)
2. Conta no [Supabase](https://supabase.com)
3. Repositório Git do projeto (GitHub, GitLab ou Bitbucket)

## 🗄️ Passo 1: Configurar o Supabase

### 1.1 Criar um novo projeto no Supabase

1. Acesse [https://app.supabase.com](https://app.supabase.com)
2. Clique em "New Project"
3. Preencha os dados:
   - **Name**: biblivre-db (ou nome de sua preferência)
   - **Database Password**: Crie uma senha forte e **guarde-a**
   - **Region**: Escolha a região mais próxima (ex: South America - São Paulo)
4. Clique em "Create new project"

### 1.2 Obter as credenciais de conexão

1. No painel do projeto, vá para **Settings** > **Database**
2. Na seção "Connection string", copie os dados:
   - **Host**: `db.XXXXXXXXXXXX.supabase.co`
   - **Database name**: `postgres`
   - **Port**: `5432`
   - **User**: `postgres`
   - **Password**: A senha que você definiu

### 1.3 Executar os scripts SQL

1. No Supabase, vá para **SQL Editor**
2. Crie uma nova query e execute o conteúdo de `sql/createdatabase.sql` (ajustado para Supabase)
3. Depois execute o conteúdo de `sql/biblivre4.sql`

**Nota**: Como o Supabase não permite criar novos usuários facilmente, use o usuário `postgres` padrão.

## 🚢 Passo 2: Deploy no Render

### 2.1 Preparar o repositório

1. Faça commit de todos os arquivos novos:
```bash
git add render.yaml Dockerfile docker-entrypoint.sh .dockerignore DEPLOY.md
git commit -m "Add Render deployment configuration"
git push origin master
```

### 2.2 Criar o Web Service no Render

1. Acesse [https://dashboard.render.com](https://dashboard.render.com)
2. Clique em "New +" e selecione "Web Service"
3. Conecte seu repositório Git
4. Selecione o repositório do Biblivre-5
5. Preencha as configurações:
   - **Name**: biblivre5 (ou nome de sua preferência)
   - **Environment**: Docker
   - **Region**: Ohio (US East) - grátis
   - **Branch**: master
   - **Dockerfile Path**: ./Dockerfile

### 2.3 Configurar variáveis de ambiente

Na seção "Environment Variables", adicione:

| Key | Value |
|-----|-------|
| `DB_HOST` | `db.XXXXXXXXXXXX.supabase.co` (do Supabase) |
| `DB_PORT` | `5432` |
| `DB_NAME` | `postgres` |
| `DB_USER` | `postgres` |
| `DB_PASSWORD` | Sua senha do Supabase |
| `JAVA_OPTS` | `-Xmx512m -Xms256m` |

### 2.4 Configurar o plano

- Selecione **Free** (ou outro plano conforme necessário)
- Clique em "Create Web Service"

### 2.5 Aguardar o deploy

O Render irá:
1. Clonar o repositório
2. Construir a imagem Docker
3. Instalar as dependências Maven
4. Compilar o projeto
5. Iniciar o Tomcat

**Tempo estimado**: 10-15 minutos na primeira vez.

## 🔍 Passo 3: Verificar o deploy

1. Após o deploy concluir, você verá uma URL como: `https://biblivre5.onrender.com`
2. Acesse a URL para ver o sistema funcionando
3. Verifique os logs em caso de erros

## ⚙️ Configurações Adicionais

### Ajustar limites de memória

Se o plano Free (512MB RAM) for insuficiente, considere:
- Upgrade para um plano pago
- Ou ajustar o `JAVA_OPTS`: `-Xmx400m -Xms200m`

### SSL/HTTPS

O Render fornece certificado SSL automaticamente para todos os deployments.

### Domínio customizado

1. No dashboard do Render, vá para **Settings** > **Custom Domain**
2. Adicione seu domínio
3. Configure os registros DNS conforme instruído

### Persistência de dados

O Supabase já fornece persistência. Para arquivos (uploads, anexos):
- Configure um storage bucket no Supabase
- Ou use outro serviço como AWS S3, Cloudinary, etc.

## 🐛 Troubleshooting

### Erro de conexão com o banco

- Verifique se as variáveis de ambiente estão corretas
- Confirme que o IP do Render não está bloqueado no Supabase
- No Supabase, vá para **Settings** > **Database** > **Connection Pooling** e use o modo "Session"

### Erro de memória

- Reduza o `JAVA_OPTS`: `-Xmx400m -Xms200m`
- Considere upgrade para um plano pago

### Build falha

- Verifique os logs do build no Render
- Certifique-se de que todas as dependências da pasta `lib/` estão no repositório

### Aplicação não inicializa

- Verifique os logs de runtime
- Confirme que o banco de dados foi inicializado corretamente
- Execute os scripts SQL manualmente no Supabase se necessário

## 📊 Monitoramento

### Logs

No dashboard do Render:
- **Logs**: Veja logs em tempo real
- **Events**: Histórico de deploys

### Métricas

- **Metrics**: CPU, Memória, Bandwidth
- Configure alertas se necessário

## 🔄 Atualizações

Para atualizar o sistema:

1. Faça suas alterações no código
2. Commit e push para o repositório
3. O Render fará deploy automático (se auto-deploy estiver ativado)

Ou force um novo deploy:
- No dashboard do Render, clique em "Manual Deploy" > "Deploy latest commit"

## 💰 Custos

### Plano Free do Render

- ✅ 750 horas/mês grátis (suficiente para 1 instância)
- ⚠️ A aplicação "hiberna" após 15 minutos de inatividade
- ⚠️ Reinicialização pode levar 30+ segundos

### Plano Starter ($7/mês)

- ✅ Sem hibernação
- ✅ 400 horas/mês incluídas
- ✅ Melhor para produção

### Supabase

- ✅ Plano Free: 500MB de banco, 2GB de armazenamento
- ✅ Plano Pro: $25/mês com recursos maiores

## 🎯 Próximos passos

1. Configure backup automático do Supabase
2. Configure monitoramento e alertas
3. Adicione domínio customizado
4. Configure CDN para assets estáticos (opcional)
5. Implemente cache (Redis/Memcached) se necessário

## 📚 Recursos úteis

- [Documentação do Render](https://render.com/docs)
- [Documentação do Supabase](https://supabase.com/docs)
- [Documentação do Biblivre](http://www.biblivre.org.br)

## 🆘 Suporte

Em caso de dúvidas:
- Render: [https://render.com/docs/support](https://render.com/docs/support)
- Supabase: [https://supabase.com/support](https://supabase.com/support)
- Biblivre: [https://github.com/Biblivre-org/Biblivre5x](https://github.com/Biblivre-org/Biblivre5x)
