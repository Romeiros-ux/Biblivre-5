#!/bin/bash

# Script helper para Linux/Mac - Deploy do Biblivre-5
# Execute este script para preparar o projeto para deploy

echo ""
echo "========================================"
echo "  Biblivre-5 - Preparação para Deploy"
echo "========================================"
echo ""

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verificar se git está instalado
if ! command -v git &> /dev/null; then
    echo -e "${RED}[ERRO]${NC} Git não encontrado. Instale o Git primeiro."
    echo ""
    echo "Ubuntu/Debian: sudo apt-get install git"
    echo "Mac: brew install git"
    exit 1
fi

echo -e "${GREEN}[OK]${NC} Git encontrado"
echo ""

# Verificar status do repositório
echo "Verificando status do repositório..."
git status --short
echo ""

# Perguntar se deseja continuar
read -p "Deseja adicionar todos os arquivos e fazer commit? (s/N): " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Ss]$ ]]; then
    echo ""
    echo "Operação cancelada."
    exit 0
fi

echo ""
echo "Adicionando arquivos..."
git add .

echo ""
echo "Fazendo commit..."
git commit -m "Add cloud deployment configuration (Supabase + Render)"

echo ""
echo "Fazendo push..."
git push origin master

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo -e "  ${GREEN}Commit e Push realizados com sucesso!${NC}"
    echo "========================================"
    echo ""
    echo "Próximos passos:"
    echo ""
    echo "1. Configure o Supabase:"
    echo "   - Acesse: https://supabase.com"
    echo "   - Crie um projeto"
    echo "   - Execute os scripts SQL"
    echo ""
    echo "2. Configure o Render:"
    echo "   - Acesse: https://render.com"
    echo "   - Crie um Web Service"
    echo "   - Conecte seu repositório"
    echo "   - Configure as variáveis de ambiente"
    echo ""
    echo "3. Consulte os guias:"
    echo "   - ${YELLOW}QUICKSTART.md${NC} - Guia rápido"
    echo "   - ${YELLOW}DEPLOY.md${NC} - Guia completo"
    echo ""
else
    echo ""
    echo -e "${RED}[ERRO]${NC} Falha no push. Verifique os erros acima."
fi

echo ""
