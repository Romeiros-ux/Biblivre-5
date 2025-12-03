# 🚀 GUIA RÁPIDO: Corrigir 404 Error

## Problema
Aplicação retorna **404 Not Found** porque o banco de dados não foi inicializado.

---

## ✅ SOLUÇÃO (5 minutos)

### 1️⃣ Abrir SQL Editor do Supabase
🔗 https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong/sql

### 2️⃣ Verificar Estado do Banco

Cole e execute esta query:

```sql
SELECT COUNT(*) as total_tabelas 
FROM information_schema.tables 
WHERE table_schema = 'global';
```

**Se retornar 0 ou erro:** Banco não inicializado → Continue para passo 3

**Se retornar 55:** Banco OK → Pule para passo 6

---

### 3️⃣ Executar Arquivo de Estrutura

1. Abra o arquivo: `sql/split/01_estrutura_final.sql`
2. Selecione TUDO (Ctrl+A)
3. Copie (Ctrl+C)
4. Cole no SQL Editor do Supabase (Ctrl+V)
5. Clique em **RUN** (ou Ctrl+Enter)
6. Aguarde ~2 minutos
7. Deve aparecer: ✅ `Success. No rows returned`

### 4️⃣ Executar Arquivos de Dados (na ordem)

**Arquivo 02:**
1. Abra: `sql/split/02_dados_final_parte1.sql`
2. Copie tudo → Cole no Supabase → RUN
3. Aguarde ~1 minuto

**Arquivo 03:**
1. Abra: `sql/split/03_dados_final_parte2.sql`
2. Copie tudo → Cole no Supabase → RUN
3. Aguarde ~1 minuto

**Arquivo 04:**
1. Abra: `sql/split/04_dados_final_parte3.sql`
2. Copie tudo → Cole no Supabase → RUN
3. Aguarde ~45 segundos

### 5️⃣ Verificar Dados Carregados

Execute no SQL Editor:

```sql
-- Deve retornar 55
SELECT COUNT(*) FROM information_schema.tables 
WHERE table_schema = 'global';

-- Deve retornar ~5000
SELECT COUNT(*) FROM global.translations;

-- Deve mostrar usuário admin
SELECT * FROM global.logins;
```

✅ Se todos retornarem valores, **banco está pronto!**

---

### 6️⃣ Reiniciar Aplicação no Render

Acesse: https://dashboard.render.com

1. Clique no seu serviço (biblivre5 ou similar)
2. Clique nos **3 pontos** no canto superior direito
3. Clique em **"Restart"**
4. Aguarde ~2 minutos

---

### 7️⃣ Acessar Aplicação

A URL do Render está no dashboard (algo como):
`https://biblivre5-xyz.onrender.com`

**Deve aparecer:**
- 🟢 Tela de login do Biblivre
- 🟢 Ou wizard de configuração inicial

**Login padrão:**
- 👤 Usuário: `admin`
- 🔑 Senha: `abracadabra`

---

## ❌ Ainda com 404?

### Verificar Logs do Render

1. Dashboard Render → Seu serviço → **Logs**
2. Procure por:
   - ✅ `Database schema verified: 55 tables found` → Banco OK
   - ❌ `WARNING: Database schema not found` → Executar SQLs
   - ❌ `Connection refused` → Problema nas variáveis de ambiente

### Configurar Variáveis de Ambiente (se necessário)

Dashboard Render → Seu serviço → **Environment**

Adicione:
- `DB_HOST` = `db.uqfvicgelyxmikqaiong.supabase.co`
- `DB_PORT` = `5432`
- `DB_NAME` = `postgres`
- `DB_USER` = `postgres`
- `DB_PASSWORD` = `OgirdoR!198500`

Depois clique em **"Save Changes"** e aguarde redeploy automático.

---

## 📞 Checklist Final

- [ ] Banco tem 55 tabelas
- [ ] Banco tem ~5000 traduções
- [ ] Banco tem usuário admin
- [ ] Aplicação reiniciada no Render
- [ ] Logs mostram "Database schema verified"
- [ ] URL do Render abre tela de login

---

## 🎉 Funcionou?

Parabéns! Sua biblioteca está no ar.

**Próximos passos:**
1. Fazer login como admin
2. Alterar senha do administrador
3. Configurar dados da biblioteca
4. Começar a catalogação

**Documentação completa:**
- `README.md` - Visão geral
- `DEPLOY.md` - Guia completo de deploy
- `MEU-DEPLOY.md` - Suas configurações específicas
