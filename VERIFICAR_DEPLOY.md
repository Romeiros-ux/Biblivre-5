# ✅ Checklist de Verificação do Deploy

## Status Atual: 404 Error no Render

### Causa Provável
A aplicação está rodando mas retorna 404 porque o **banco de dados ainda não foi inicializado**.

---

## 🔍 Passo a Passo de Diagnóstico

### 1. Verificar Logs no Render

Acesse: https://dashboard.render.com → Seu serviço → Logs

**Procure por:**
- ✅ `Configuration completed. Starting Tomcat...` - Container iniciou
- ✅ `Database schema verified: 55 tables found` - Banco OK
- ❌ `WARNING: Database schema not found` - **Banco não inicializado**
- ❌ Erros de conexão PostgreSQL - Problema nas credenciais

---

## 📊 Checklist do Banco de Dados Supabase

Acesse: https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong/editor

### Execute esta query de verificação:

```sql
-- Verificar se o schema global existe
SELECT COUNT(*) as total_tabelas 
FROM information_schema.tables 
WHERE table_schema = 'global';
```

**Resultado esperado:** `55`

### Se retornar 0 ou erro:

❌ **Banco não foi inicializado**

**Solução:** Execute os 4 arquivos SQL nesta ordem:

1. **01_estrutura_final.sql** (estrutura - 1.345 linhas)
   - Cria schema `global`
   - Cria 5 funções PostgreSQL
   - Cria 55 tabelas
   - ⏱️ Tempo: ~2 minutos

2. **02_dados_final_parte1.sql** (2.000 INSERTs)
   - Dados iniciais: traduções, configurações
   - ⏱️ Tempo: ~1 minuto

3. **03_dados_final_parte2.sql** (2.000 INSERTs)
   - Continuação dos dados
   - ⏱️ Tempo: ~1 minuto

4. **04_dados_final_parte3.sql** (1.643 INSERTs)
   - Dados finais
   - ⏱️ Tempo: ~45 segundos

---

## 🔧 Como Executar SQL no Supabase

### Passo 1: Abrir SQL Editor
https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong/sql

### Passo 2: Copiar conteúdo do arquivo
Abra `sql/split/01_estrutura_final.sql` no VS Code
- Ctrl+A (selecionar tudo)
- Ctrl+C (copiar)

### Passo 3: Colar no SQL Editor
- Ctrl+V no editor do Supabase
- Clique em **"RUN"** ou Ctrl+Enter

### Passo 4: Aguardar conclusão
Você verá: `Success. No rows returned`

### Passo 5: Repetir para os outros 3 arquivos
Execute na ordem: 02, 03, 04

---

## 🚀 Após Executar os SQLs

### 1. Verificar dados carregados:

```sql
-- Deve retornar ~5000 traduções
SELECT COUNT(*) FROM global.translations;

-- Deve retornar o usuário admin
SELECT * FROM global.logins;

-- Deve retornar configurações
SELECT COUNT(*) FROM global.configurations;
```

### 2. Forçar novo deploy no Render

**Opção A: Fazer commit no GitHub**
```bash
git add .
git commit -m "Fix: Atualizar health check do Dockerfile"
git push
```

**Opção B: Manual Deploy no Render**
- Dashboard → Seu serviço → "Manual Deploy" → "Deploy latest commit"

### 3. Aguardar build (~10-12 minutos)

### 4. Acessar a aplicação

URL do Render (algo como): `https://biblivre5-xyz.onrender.com`

**Deve aparecer:**
- Tela de login do Biblivre
- Ou tela de setup inicial (se for primeira vez)

**Login padrão:**
- Usuário: `admin`
- Senha: `abracadabra`

---

## 🐛 Troubleshooting

### Erro: "Connection refused"
❌ Variáveis de ambiente não configuradas no Render

**Solução:** 
1. Dashboard Render → Seu serviço → Environment
2. Adicionar:
   - `DB_HOST`: `db.uqfvicgelyxmikqaiong.supabase.co`
   - `DB_PORT`: `5432`
   - `DB_NAME`: `postgres`
   - `DB_USER`: `postgres`
   - `DB_PASSWORD`: `OgirdoR!198500`

### Erro: "Schema 'global' does not exist"
❌ SQL não foi executado no Supabase

**Solução:** Execute os 4 arquivos SQL conforme instruções acima

### 404 mesmo após executar SQLs
❌ Aplicação precisa reiniciar após banco estar pronto

**Solução:**
1. Render Dashboard → Seu serviço
2. Clique nos 3 pontos → "Restart"

### Health check failing
❌ Banco não responde ou aplicação travada

**Solução:**
1. Verificar logs no Render
2. Verificar se Supabase está online
3. Testar conexão manual:
```bash
psql -h db.uqfvicgelyxmikqaiong.supabase.co -U postgres -d postgres
```

---

## 📝 Checklist Final

Marque conforme for completando:

- [ ] Banco Supabase com 55 tabelas no schema `global`
- [ ] Dados carregados (5000+ traduções)
- [ ] Variáveis de ambiente no Render configuradas
- [ ] Commit e push das correções do Dockerfile
- [ ] Build no Render concluído com sucesso
- [ ] Health check passando (verde no Render)
- [ ] Aplicação acessível via URL do Render
- [ ] Login funcionando com admin/abracadabra

---

## ✅ Tudo Funcionando?

Parabéns! 🎉 Sua instalação do Biblivre 5 está no ar!

**Próximos passos:**
1. Trocar senha do admin
2. Configurar nome da biblioteca
3. Começar a catalogação
4. Configurar backup automático

---

## 📞 Precisa de Ajuda?

Verifique os logs:
- **Render**: Dashboard → Logs
- **Supabase**: Dashboard → Logs → Postgres Logs

Documentação: https://github.com/Romeiros-ux/Biblivre-5
