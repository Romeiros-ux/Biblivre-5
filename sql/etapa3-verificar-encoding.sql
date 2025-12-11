-- ============================================================
-- ETAPA 3: VERIFICAR ENCODING
-- ============================================================
-- Execute esta query simples para ver o texto atual:
SELECT 
    language, 
    key, 
    text
FROM biblivre4.translations 
WHERE key = 'text.main.logged_in'
   OR key = 'menu.help'
   OR key = 'language_name'
ORDER BY language, key
LIMIT 10;

-- ✅ Se aparecer "Versão", "Português", "Ajuda" corretos → PULE a ETAPA 4, vá direto para ETAPA 5
-- ❌ Se aparecer "VersÃ£o", "PortuguÃªs", etc → O problema é no CÓDIGO JAVA, não no banco
-- 
-- OBS: O erro "invalid byte sequence for encoding UTF8: 0xc3 0x20" significa que
-- os dados JÁ ESTÃO em UTF-8 no banco. O problema está na aplicação Java.
