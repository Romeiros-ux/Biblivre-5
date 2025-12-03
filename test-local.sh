#!/bin/bash

# Script de teste local com Docker
# Use este script para testar o deploy localmente antes de enviar para o Render

echo "🐳 Testando Biblivre-5 localmente com Docker"
echo ""

# Verificar se o Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "❌ Docker não está instalado. Instale o Docker primeiro."
    exit 1
fi

# Verificar se o docker-compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose não está instalado."
    exit 1
fi

# Criar arquivo docker-compose.yml temporário
cat > docker-compose.test.yml <<EOF
version: '3.8'

services:
  db:
    image: postgres:13
    environment:
      POSTGRES_DB: postgres
      POSTGRES_USER: biblivre
      POSTGRES_PASSWORD: biblivre123
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./sql:/docker-entrypoint-initdb.d
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U biblivre"]
      interval: 5s
      timeout: 5s
      retries: 5

  web:
    build: .
    ports:
      - "8080:8080"
    environment:
      DB_HOST: db
      DB_PORT: 5432
      DB_NAME: postgres
      DB_USER: biblivre
      DB_PASSWORD: biblivre123
      JAVA_OPTS: -Xmx512m -Xms256m
    depends_on:
      db:
        condition: service_healthy

volumes:
  postgres_data:
EOF

echo "📦 Iniciando containers..."
docker-compose -f docker-compose.test.yml up --build

# Cleanup
echo ""
echo "🧹 Limpando arquivos temporários..."
rm docker-compose.test.yml

echo ""
echo "✅ Teste concluído!"
echo ""
echo "Para acessar a aplicação, abra: http://localhost:8080"
echo "Para parar: docker-compose -f docker-compose.test.yml down"
