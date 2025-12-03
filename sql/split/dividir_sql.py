# Script para dividir o biblivre4.sql corretamente
import re

# Ler o arquivo original
with open('sql/biblivre4.sql', 'r', encoding='utf-8') as f:
    content = f.read()

# Separar em comandos SQL
statements = []
current = []
in_function = False

for line in content.split('\n'):
    current.append(line)
    
    # Detectar início de função
    if re.match(r'^\s*CREATE\s+(OR\s+REPLACE\s+)?FUNCTION', line, re.IGNORECASE):
        in_function = True
    
    # Detectar fim de função
    if in_function and re.search(r'\$\$\s*;', line):
        in_function = False
        statements.append('\n'.join(current))
        current = []
        continue
    
    # Se não estamos em função e encontramos ponto-e-vírgula, é fim do comando
    if not in_function and line.strip().endswith(';') and not line.strip().startswith('--'):
        statements.append('\n'.join(current))
        current = []

# Adicionar o que sobrou
if current:
    statements.append('\n'.join(current))

# Separar por tipo
creates = []
inserts = []
others = []

for stmt in statements:
    stmt_upper = stmt.strip().upper()
    if stmt_upper.startswith('CREATE') or stmt_upper.startswith('ALTER') or stmt_upper.startswith('SET'):
        creates.append(stmt)
    elif stmt_upper.startswith('INSERT'):
        inserts.append(stmt)
    elif stmt.strip() and not stmt.strip().startswith('--'):
        others.append(stmt)

print(f"Total de comandos: {len(statements)}")
print(f"CREATEs/ALTERs/SETs: {len(creates)}")
print(f"INSERTs: {len(inserts)}")
print(f"Outros: {len(others)}")

# Salvar estrutura (CREATE, ALTER, SET)
with open('sql/split/01_estrutura.sql', 'w', encoding='utf-8') as f:
    f.write('\n\n'.join(creates))

# Dividir INSERTs em arquivos menores
inserts_per_file = 2000
for i in range(0, len(inserts), inserts_per_file):
    file_num = (i // inserts_per_file) + 2
    chunk = inserts[i:i + inserts_per_file]
    with open(f'sql/split/{file_num:02d}_dados_parte{file_num-1}.sql', 'w', encoding='utf-8') as f:
        f.write('\n\n'.join(chunk))
    print(f"Criado: {file_num:02d}_dados_parte{file_num-1}.sql com {len(chunk)} INSERTs")

print("\nArquivos criados com sucesso!")
