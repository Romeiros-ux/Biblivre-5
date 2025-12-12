# 🔍 DIAGNÓSTICO COMPLETO - PROBLEMAS DE LAYOUT

## ✅ CHECKLIST DE VERIFICAÇÃO

### 1. BANCO DE DADOS (✓ JÁ FEITO)
- [x] Encoding corrigido em `configurations`
- [x] Encoding corrigido em `translations`
- [x] Teste: "Catalogação" aparece correto no SQL

### 2. APLICAÇÃO NO RENDER

#### 2.1 Verificar se a aplicação reiniciou
1. Acesse: https://dashboard.render.com
2. Vá em "Logs"
3. Procure por: `Server startup in XXXX ms`
4. **Status esperado:** Aplicação iniciada sem erros

#### 2.2 Verificar se banco está conectado
Nos logs do Render, procure por:
- ✅ `Database connection successful`
- ❌ `Connection refused` ou `Database error`

### 3. RECURSOS ESTÁTICOS (CSS/JS/IMAGENS)

#### 3.1 Abrir DevTools (F12)
1. Vá em: https://biblivre-5.onrender.com
2. Pressione F12
3. Vá na aba **Network**
4. Atualize a página (F5 ou Ctrl+R)

#### 3.2 Verificar arquivos CSS
Procure por estes arquivos e veja o STATUS:

| Arquivo | URL Esperada | Status OK |
|---------|-------------|-----------|
| `biblivre.core.css` | `/static/styles/biblivre.core.css` | 200 |
| `jquery-ui.css` | `/static/styles/jquery-ui.css` | 200 |
| `font-awesome.min.css` | `/static/styles/font-awesome.min.css` | 200 |

**Se aparecer 404:** Problema com caminho dos recursos estáticos

#### 3.3 Verificar arquivos JavaScript
| Arquivo | URL Esperada | Status OK |
|---------|-------------|-----------|
| `jquery.js` | `/static/scripts/jquery.js` | 200 |
| `biblivre.core.js` | `/static/scripts/biblivre.core.js` | 200 |

#### 3.4 Verificar Console
Na aba **Console** do DevTools:
- ❌ Se aparecer erros em vermelho → Anotar mensagem
- ✅ Se não tiver erros → Problema pode ser no CSS

### 4. ESTRUTURA HTML

#### 4.1 Inspecionar elemento
1. Clique com botão direito na página
2. Escolha "Inspecionar" ou "Inspect"
3. Veja se a estrutura HTML está correta:

```html
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="static/styles/biblivre.core.css">
  ...
</head>
<body>
  <div id="header">
    <div id="logo_biblivre">...</div>
    <div id="title">
      <h1>Nome da Biblioteca</h1>
      <h2>Subtítulo</h2>
    </div>
  </div>
  ...
</body>
</html>
```

### 5. PROBLEMAS COMUNS E SOLUÇÕES

#### Problema 1: CSS não está sendo aplicado
**Sintomas:**
- Página toda em branco/texto simples
- Sem cores, sem formatação
- Logos empilhados verticalmente

**Causa:** Arquivos CSS não carregaram (404)

**Solução:**
1. Verificar se WAR foi gerado corretamente
2. Verificar se pasta `WebContent/static` está no WAR
3. Rebuild completo no Render

#### Problema 2: Textos ainda com caracteres estranhos
**Sintomas:**
- "CatalogaÃ§Ã£o" ainda aparece

**Causa:** Aplicação não reiniciou ou cache do browser

**Solução:**
1. Limpar cache: Ctrl+Shift+R
2. Abrir em aba anônima: Ctrl+Shift+N
3. Reiniciar aplicação no Render

#### Problema 3: Erro 404 na página
**Sintomas:**
- Página não encontrada

**Causa:** Banco não inicializado ou contexto errado

**Solução:**
1. Executar scripts SQL de inicialização
2. Verificar se schema `biblivre4` existe

#### Problema 4: Layout quebrado/desorganizado
**Sintomas:**
- Elementos fora do lugar
- Largura errada
- Menus desalinhados

**Causa:** CSS parcialmente carregado ou conflito de versão

**Solução:**
1. Verificar se TODOS os CSS carregaram (200)
2. Limpar cache do navegador
3. Verificar se não há erro no console

### 6. COMANDOS DE VERIFICAÇÃO

#### No Supabase SQL Editor:
```sql
-- Verificar se encoding está OK
SELECT key, value FROM biblivre4.configurations
WHERE key IN ('general.title', 'general.subtitle');

-- Deve retornar textos SEM "Ã"
SELECT key, text FROM biblivre4.translations
WHERE language = 'pt-BR' AND key = 'menu.cataloging';
```

#### No Browser DevTools Console:
```javascript
// Verificar se jQuery carregou
typeof jQuery

// Verificar encoding da página
document.characterSet

// Verificar se CSS foi aplicado
getComputedStyle(document.getElementById('header')).height
```

### 7. FORÇAR REBUILD COMPLETO NO RENDER

Se nada funcionar:

1. Acesse Render Dashboard
2. Vá em "Manual Deploy"
3. Escolha "Clear build cache & deploy"
4. Aguarde ~5-10 minutos

### 8. TESTE FINAL

Depois de todas verificações, a página deve mostrar:

✅ Cabeçalho azul gradiente (100px altura)
✅ Logo Biblivre à esquerda
✅ Título e subtítulo centralizados (sem caracteres estranhos)
✅ Logos dos patrocinadores à direita
✅ Menu preto inferior com itens
✅ Textos: "Catalogação", "Administração", "Circulação"

---

## 📞 PRÓXIMOS PASSOS

Me informe qual dos problemas acima você está tendo:
1. CSS não carrega (404)?
2. Textos ainda com Ã?
3. Erro 404 na página?
4. Layout quebrado/desorganizado?
5. Outro problema?

E me envie:
- Screenshot da página
- Screenshot do DevTools > Network
- Screenshot do DevTools > Console
