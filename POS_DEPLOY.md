# 📊 Monitoramento Pós-Deploy - Biblivre 5

## ✅ Status do Deploy

### Código no GitHub
- **Branch**: `appmod/java-upgrade-20251208185505`
- **Commit**: feat: Spring 6.2.3 + Java 21 + Supabase - Production Ready
- **Status**: ✅ Publicado com sucesso
- **URL**: https://github.com/Romeiros-ux/Biblivre-5

### Banco de Dados Supabase
- **Status**: ✅ Operacional
- **Tabelas**: 55
- **Registros**: 6.158 traduções + dados
- **Conexão**: Testada e funcionando

---

## 🔍 Verificações Pós-Deploy

### 1. Health Check Básico
```bash
# Substitua pela URL do seu serviço
curl -I https://biblivre5.onrender.com

# Esperado: HTTP/1.1 200 OK
```

### 2. Verificar Logs no Render
1. Acesse: https://dashboard.render.com
2. Clique no serviço `biblivre5`
3. Aba **Logs**
4. Procure por:
   - ✅ `Server startup in [xxxxx] milliseconds`
   - ✅ `Tomcat started on port(s): 8080`
   - ❌ `ERROR` ou `Exception` (não deve haver)

### 3. Teste de Conectividade com Banco
No navegador, após acessar a aplicação:
- [ ] Página inicial carrega sem erro 500
- [ ] Não aparece erro de conexão com banco
- [ ] Elementos da página carregam corretamente

### 4. Teste de Login
1. Acesse a área administrativa
2. Tente fazer login com usuário padrão
3. Verifique se o dashboard carrega

---

## 🐛 Troubleshooting

### Problema: Build Falha no Render

**Sintomas**: 
- Build para em "Building..."
- Erro: "Failed to build"

**Soluções**:
```powershell
# 1. Verificar se Dockerfile.java21 existe
git ls-files | findstr Dockerfile.java21

# 2. Verificar sintaxe do Dockerfile
docker build -f Dockerfile.java21 -t test . --no-cache

# 3. Ver logs detalhados no Render
# Dashboard → Seu serviço → Events → Ver detalhes do erro
```

### Problema: Aplicação Não Inicia (Exit Code 1)

**Sintomas**:
- Build sucesso, mas aplicação não inicia
- Logs mostram "Exited with code 1"

**Possíveis Causas**:
1. **Memória insuficiente** (Free tier = 512MB)
   - Solução: Upgrade para Starter ($7/mês com 1GB)

2. **Erro de conexão com Supabase**
   ```bash
   # Verificar credenciais em context.xml
   # Host: aws-0-us-west-2.pooler.supabase.com
   # User: postgres.ouobsvpkwqbzeeapcpgw
   ```

3. **Porta incorreta**
   - Tomcat deve usar porta 8080 (já configurado)

### Problema: 502 Bad Gateway

**Sintomas**: 
- Aplicação buildou mas retorna 502

**Soluções**:
1. Aguardar mais tempo (Tomcat pode demorar 2-3 minutos para iniciar)
2. Verificar logs: "Server startup in..."
3. Restart manual: Dashboard → Restart Service

### Problema: Conexão com Supabase Recusada

**Sintomas**:
- Logs mostram: "Connection refused" ou "Timeout"

**Soluções**:
1. Verificar Supabase está online: https://supabase.com/dashboard
2. IP do Render pode estar bloqueado:
   - Supabase → Settings → Database → Connection Pooling
   - Disable "Restrict connections to whitelisted IPs"
3. Verificar senha no `context.xml` está correta

---

## 📈 Métricas para Acompanhar

### No Render Dashboard
- **Response Time**: < 500ms (ideal)
- **Memory Usage**: < 80% do limite
- **CPU Usage**: < 70% constante
- **Uptime**: > 99%

### No Supabase Dashboard
- **Active Connections**: < 10 (normal)
- **Database Size**: Monitor crescimento
- **Query Performance**: < 100ms (médio)

---

## 🔐 Segurança Pós-Deploy

### Checklist de Segurança

- [ ] **SSL/HTTPS**: Verificar certificado válido (Render faz automático)
- [ ] **Credenciais**: Considerar mover para variáveis de ambiente
- [ ] **Firewall**: Supabase Connection Pooling configurado
- [ ] **Backups**: Configurar backups automáticos no Supabase
- [ ] **Monitoring**: Configurar alertas de downtime

### Melhorias de Segurança Recomendadas

1. **Mover credenciais para variáveis de ambiente**
   ```yaml
   # No Render Dashboard → Environment
   DATABASE_URL=jdbc:postgresql://...
   DB_USERNAME=postgres.ouobsvpkwqbzeeapcpgw
   DB_PASSWORD=OgirdoR!198500
   ```

2. **Configurar backups no Supabase**
   - Supabase → Settings → Backups
   - Habilitar backups diários

3. **Configurar alertas**
   - Render → Notifications
   - Email para deploy failures e downtime

---

## 📞 Suporte e Recursos

### Links Úteis
- **Render Docs**: https://render.com/docs
- **Supabase Docs**: https://supabase.com/docs
- **Spring 6.2 Docs**: https://docs.spring.io/spring-framework/docs/6.2.3/
- **Tomcat 10.1 Docs**: https://tomcat.apache.org/tomcat-10.1-doc/

### Comandos Úteis

```powershell
# Verificar status do banco
java -cp ".;%USERPROFILE%\.m2\repository\org\postgresql\postgresql\42.7.2\postgresql-42.7.2.jar" VerifySupabaseDB

# Testar build local
docker build -f Dockerfile.java21 -t biblivre5:test .
docker run -p 8080:8080 biblivre5:test

# Ver logs do Render (requer Render CLI)
render logs -s biblivre5
```

---

## ✅ Checklist de Go-Live

### Pré-Deploy
- [x] Código commitado e pushed
- [x] Banco de dados inicializado
- [x] Dockerfile criado e testado
- [x] Documentação completa

### Durante Deploy
- [ ] Build iniciado no Render
- [ ] Build completado com sucesso (15-20 min)
- [ ] Logs mostram "Server startup" sem erros
- [ ] Health check retorna 200 OK

### Pós-Deploy
- [ ] Aplicação acessível via URL
- [ ] Página inicial carrega corretamente
- [ ] Login funciona
- [ ] Pesquisa bibliográfica funciona
- [ ] Dados do banco aparecem corretamente

### Validação Final
- [ ] Teste de carga básico realizado
- [ ] Backups configurados
- [ ] Monitoring ativo
- [ ] Documentação atualizada com URL de produção
- [ ] Equipe notificada do deploy

---

## 🎯 Próximos Passos Após Deploy

1. **Configurar Domínio Customizado** (opcional)
   - Render → Settings → Custom Domain
   - Adicionar: biblivre.seudominio.com

2. **Configurar CI/CD Automático**
   - Deploy automático a cada push no branch
   - Já está configurado por padrão no Render!

3. **Monitoramento Avançado**
   - Integrar com New Relic ou Datadog
   - Configurar alertas personalizados

4. **Performance**
   - Analisar métricas de resposta
   - Otimizar queries lentas no banco
   - Considerar CDN para assets estáticos

5. **Documentação do Usuário**
   - Criar guia de uso da aplicação
   - Documentar fluxos principais
   - Treinar usuários finais

---

**Última atualização**: 9 de dezembro de 2025  
**Status**: ✅ Pronto para deploy e monitoramento
