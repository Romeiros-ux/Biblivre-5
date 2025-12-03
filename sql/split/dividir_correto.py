import re

print("Lendo arquivo SQL...")
with open('sql/biblivre4.sql', 'r', encoding='utf-8') as f:
    lines = f.readlines()

print(f"Total de linhas: {len(lines)}")

# Arquivos de saída
estrutura = []
dados = []

in_create = False
create_buffer = []

for i, line in enumerate(lines):
    # Detectar início de comandos CREATE ou ALTER
    if re.match(r'^\s*(CREATE|ALTER|SET|GRANT)', line, re.IGNORECASE):
        in_create = True
        create_buffer = [line]
        continue
    
    # Se estamos em um comando CREATE
    if in_create:
        create_buffer.append(line)
        # Se encontramos ponto-e-vírgula, terminou o comando
        if line.strip().endswith(';'):
            estrutura.append(''.join(create_buffer))
            create_buffer = []
            in_create = False
        continue
    
    # Detectar INSERTs
    if re.match(r'^\s*INSERT', line, re.IGNORECASE):
        dados.append(line)
        continue

print(f"\nComandos de estrutura: {len(estrutura)}")
print(f"Comandos INSERT: {len(dados)}")

# Salvar estrutura
print("\nSalvando 01_estrutura_completo.sql...")
with open('sql/split/01_estrutura_completo.sql', 'w', encoding='utf-8') as f:
    # Adicionar cabeçalho
    f.write("-- Estrutura completa do banco de dados Biblivre\n")
    f.write("-- Criar schema global\n")
    f.write("CREATE SCHEMA IF NOT EXISTS global;\n")
    f.write("SET search_path = global, pg_catalog;\n\n")
    
    # Adicionar todos os CREATE/ALTER (exceto ALTER OWNER)
    for cmd in estrutura:
        if 'OWNER TO biblivre' not in cmd:
            f.write(cmd)
            if not cmd.endswith('\n'):
                f.write('\n')

# Dividir dados em partes
inserts_per_file = 2000
print(f"\nDividindo {len(dados)} INSERTs em arquivos de {inserts_per_file} linhas...")

for i in range(0, len(dados), inserts_per_file):
    file_num = (i // inserts_per_file) + 2
    chunk = dados[i:i + inserts_per_file]
    filename = f'sql/split/{file_num:02d}_dados_parte{file_num-1}.sql'
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(f"-- Dados parte {file_num-1}\n")
        f.write("SET search_path = global, pg_catalog;\n\n")
        f.writelines(chunk)
    print(f"Criado: {filename} com {len(chunk)} INSERTs")

print("\n✅ Arquivos criados com sucesso!")
