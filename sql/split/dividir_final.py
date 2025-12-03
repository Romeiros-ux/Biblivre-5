import re

print("Lendo biblivre4.sql...")
with open('sql/biblivre4.sql', 'r', encoding='utf-8') as f:
    content = f.read()

print("Processando SQL...")

# Remover comentários de TOC que atrapalham
content = re.sub(r'--\s*TOC entry.*?\n', '', content)
content = re.sub(r'-- Name:.*?Owner:.*?\n--\n', '', content, flags=re.DOTALL)

# Dividir em statements preservando funções
statements = []
current = []
in_function = False
paren_count = 0

lines = content.split('\n')
i = 0
while i < len(lines):
    line = lines[i]
    
    # Detectar função com $$
    if re.search(r'CREATE\s+(OR\s+REPLACE\s+)?FUNCTION', line, re.IGNORECASE):
        in_function = True
        current = [line]
        i += 1
        # Ler até encontrar o segundo $$;
        dollar_count = 0
        while i < len(lines):
            current.append(lines[i])
            if '$$' in lines[i]:
                dollar_count += 1
                if dollar_count >= 2 and lines[i].strip().endswith(';'):
                    statements.append('\n'.join(current))
                    current = []
                    in_function = False
                    break
            i += 1
        i += 1
        continue
    
    # Ignorar linhas vazias e comentários sozinhos
    if not line.strip() or line.strip().startswith('--'):
        i += 1
        continue
    
    # Pegar statements normais
    current.append(line)
    if line.strip().endswith(';'):
        stmt = '\n'.join(current).strip()
        if stmt and not stmt.startswith('--'):
            statements.append(stmt)
        current = []
    
    i += 1

print(f"Total de statements: {len(statements)}")

# Separar por tipo
creates = []
inserts = []
selects_setval = []

for stmt in statements:
    stmt_upper = stmt.upper().strip()
    
    # Ignorar ALTER OWNER
    if 'OWNER TO BIBLIVRE' in stmt_upper:
        continue
    
    # SELECTs pg_catalog.setval são parte da estrutura
    if stmt_upper.startswith('SELECT') and 'SETVAL' in stmt_upper:
        selects_setval.append(stmt)
    elif stmt_upper.startswith('INSERT'):
        inserts.append(stmt)
    elif any(stmt_upper.startswith(x) for x in ['CREATE', 'ALTER', 'SET', 'GRANT']):
        creates.append(stmt)

print(f"Estrutura: {len(creates)} comandos")
print(f"Setvals: {len(selects_setval)} comandos")
print(f"Dados: {len(inserts)} INSERTs")

# Criar arquivo de estrutura
print("\nCriando 01_estrutura_final.sql...")
with open('sql/split/01_estrutura_final.sql', 'w', encoding='utf-8') as f:
    f.write("-- Estrutura completa do banco de dados Biblivre\n")
    f.write("-- IMPORTANTE: Execute este arquivo COMPLETO antes dos arquivos de dados\n\n")
    f.write("-- Criar schema global\n")
    f.write("CREATE SCHEMA IF NOT EXISTS global;\n")
    f.write("SET search_path = global, pg_catalog;\n\n")
    
    # Escrever todos os CREATE/ALTER/SET
    for stmt in creates:
        f.write(stmt)
        f.write('\n\n')
    
    # Escrever setvals
    for stmt in selects_setval:
        f.write(stmt)
        f.write('\n')

print(f"Arquivo criado: sql/split/01_estrutura_final.sql")

# Recriar arquivos de dados
print("\nRecriando arquivos de dados...")
inserts_per_file = 2000
for i in range(0, len(inserts), inserts_per_file):
    file_num = (i // inserts_per_file) + 2
    chunk = inserts[i:i + inserts_per_file]
    filename = f'sql/split/{file_num:02d}_dados_final_parte{file_num-1}.sql'
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(f"-- Dados parte {file_num-1}\n")
        f.write("SET search_path = global, pg_catalog;\n\n")
        for stmt in chunk:
            f.write(stmt)
            f.write('\n')
    print(f"Criado: {filename} com {len(chunk)} INSERTs")

print("\n✅ Concluído!")
