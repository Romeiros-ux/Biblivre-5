# 🔧 Configuração de Desenvolvimento

## Desenvolvimento Local

### Opção 1: Usando Docker (Recomendado)

```bash
# Construir e executar
docker-compose up --build

# Acessar
http://localhost:8080
```

### Opção 2: Usando Maven + Tomcat

1. Instale as dependências:
```bash
cd lib
bash maven_deps.sh  # Linux/Mac
# ou execute os comandos manualmente no Windows
cd ..
```

2. Configure o banco de dados local:
```bash
psql -U postgres -f sql/createdatabase.sql
psql -U postgres -f sql/biblivre4.sql -d biblivre4
```

3. Configure o Tomcat:
   - Copie `WebContent/META-INF/context.xml` para `$TOMCAT_HOME/conf/Catalina/localhost/biblivre.xml`
   - Ajuste as credenciais do banco de dados

4. Build e deploy:
```bash
mvn clean package
cp target/Biblivre4.war $TOMCAT_HOME/webapps/
```

## Estrutura do Projeto

```
Biblivre-5/
├── src/java/              # Código-fonte Java
│   └── biblivre/
│       ├── acquisition/   # Módulo de aquisição
│       ├── administration/# Módulo de administração
│       ├── cataloging/    # Módulo de catalogação
│       ├── circulation/   # Módulo de circulação
│       ├── core/          # Classes base
│       ├── marc/          # Manipulação MARC21
│       └── z3950/         # Protocolo Z39.50
├── WebContent/            # Recursos web
│   ├── jsp/              # Páginas JSP
│   ├── static/           # CSS, JS, imagens
│   └── WEB-INF/          # Configurações
├── sql/                  # Scripts SQL
├── lib/                  # Dependências locais
├── Dockerfile            # Build Docker
├── render.yaml           # Config Render
└── pom.xml              # Config Maven
```

## Arquitetura

### Padrão MVC em Camadas

1. **Controller** (`controllers/`)
   - `SchemaServlet` - Roteamento principal
   - `JsonController` - APIs JSON
   - `JspController` - Renderização JSP

2. **Handler** (por módulo)
   - Processa requisições HTTP
   - Valida dados
   - Chama Business Objects

3. **Business Object (BO)**
   - Lógica de negócio
   - Validações complexas
   - Chama DAOs

4. **Data Access Object (DAO)**
   - Acesso ao banco de dados
   - Queries SQL
   - Transações

5. **Data Transfer Object (DTO)**
   - Objetos de dados
   - Serialização JSON

### Fluxo de Requisição

```
Cliente
  ↓
SchemaServlet
  ↓
JsonController / JspController
  ↓
Handler (do módulo)
  ↓
BO (lógica de negócio)
  ↓
DAO (acesso a dados)
  ↓
PostgreSQL
```

## Tecnologias

- **Backend**: Java 1.6+, Servlet 2.5
- **Servidor**: Apache Tomcat 7
- **Banco**: PostgreSQL 9.1+
- **Frontend**: JSP, JavaScript, jQuery
- **Build**: Maven 3
- **Estilo**: SASS/Compass
- **PDF**: iText
- **MARC**: MARC4J
- **Z39.50**: JZKit

## Configurações Importantes

### Banco de Dados

Arquivo: `WebContent/META-INF/context.xml`
```xml
<Resource 
  name="jdbc/biblivre4" 
  type="javax.sql.DataSource"
  driverClassName="org.postgresql.Driver"
  url="jdbc:postgresql://localhost:5432/biblivre4"
  username="biblivre"
  password="abracadabra"
/>
```

### Multi-Schema

O Biblivre suporta múltiplas bibliotecas (schemas):
- Schema `global`: Dados compartilhados
- Schema por biblioteca: Dados isolados

### Tradução

Arquivos de tradução em:
- `WebContent/Traducoes - ptBR.txt`
- `WebContent/Traducoes - enUS.txt`
- `WebContent/Traducoes - es.txt`

## Debugging

### Logs

Arquivo: `src/java/log4j.properties`

Altere o nível de log:
```properties
log4j.rootLogger=DEBUG, stdout
```

### Debug Remoto

No Tomcat, adicione em `catalina.sh`:
```bash
JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n"
```

Configure sua IDE para conectar na porta 8000.

## Testes

```bash
# Executar testes
mvn test

# Testes com cobertura
mvn test jacoco:report
```

## Build

```bash
# Build completo
mvn clean package

# Build sem testes
mvn clean package -DskipTests

# Deploy no Tomcat (configurado no pom.xml)
mvn tomcat7:deploy
```

## Contribuindo

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

### Padrões de Código

- Use tabs para indentação
- Siga as convenções Java
- Comente código complexo
- Escreva testes para novas funcionalidades

## Licença

GNU GPL v3.0 - Software Livre

## Autores

- Alberto Wagner Collavizza
- Danniel Willian B. do Nascimento

## Links Úteis

- [Site oficial](http://www.biblivre.org.br)
- [Documentação](http://www.biblivre.org.br/documentation)
- [Forum](http://groups.google.com/group/biblivre)
- [Wiki](https://github.com/Biblivre-org/Biblivre5x/wiki)
