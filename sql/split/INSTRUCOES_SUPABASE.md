# Instruções para Inicializar o Banco de Dados no Supabase

O arquivo `biblivre4.sql` foi dividido em **6 partes** menores para contornar o limite do SQL Editor do Supabase.

## 📋 Ordem de Execução

Execute os arquivos **exatamente nesta ordem** no SQL Editor do Supabase:

1. ✅ **biblivre4_parte_1.sql** (linhas 1-3000)
   - Cria o schema global
   - Cria as funções do banco
   
2. ✅ **biblivre4_parte_2.sql** (linhas 3001-6000)
   - Cria as tabelas principais
   
3. ✅ **biblivre4_parte_3.sql** (linhas 6001-9000)
   - Continua criação de tabelas
   
4. ✅ **biblivre4_parte_4.sql** (linhas 9001-12000)
   - Cria índices e constraints
   
5. ✅ **biblivre4_parte_5.sql** (linhas 12001-15000)
   - Insere dados iniciais (parte 1)
   
6. ✅ **biblivre4_parte_6.sql** (linhas 15001-16249)
   - Insere dados iniciais (parte 2)
   - Finaliza configuração

## 🔧 Como Executar

### Passo a Passo:

1. **Acesse o Supabase:**
   - URL: https://supabase.com/dashboard/project/uqfvicgelyxmikqaiong
   - Faça login na sua conta

2. **Abra o SQL Editor:**
   - No menu lateral, clique em "SQL Editor"
   - Clique em "New query"

3. **Execute cada arquivo:**
   - Abra o arquivo `biblivre4_parte_1.sql` no seu editor de texto
   - Copie todo o conteúdo (Ctrl+A, Ctrl+C)
   - Cole no SQL Editor do Supabase (Ctrl+V)
   - Clique em "RUN" ou pressione Ctrl+Enter
   - **Aguarde a conclusão** antes de continuar

4. **Repita para os arquivos seguintes:**
   - Depois que o parte_1 terminar com sucesso, faça o mesmo com parte_2
   - Continue até executar todas as 6 partes

## ⚠️ Importante

- **Não pule nenhuma parte** - a ordem é essencial
- **Aguarde cada script terminar completamente** antes de executar o próximo
- Se algum erro ocorrer, anote qual arquivo e qual linha para debug
- Cada parte pode levar de 10 segundos a 2 minutos para executar

## ✅ Verificação

Após executar todas as 6 partes, verifique se tudo está correto:

```sql
-- Verificar se o schema foi criado
SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'global';

-- Verificar quantas tabelas foram criadas
SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'global';

-- Verificar se há dados nas tabelas principais
SELECT COUNT(*) FROM global.translations;
```

Se todos os comandos acima retornarem resultados, a inicialização foi bem-sucedida! 🎉

## 🚀 Próximo Passo

Depois de executar todos os arquivos SQL, volte ao Render e faça deploy novamente. A aplicação já terá o banco de dados pronto para funcionar!
