# Multi-stage build for Biblivre-5
FROM maven:3.8-openjdk-8 AS build

# Set working directory
WORKDIR /app

# Copy pom.xml first for better caching
COPY pom.xml .

# Copy and install local dependencies first (cached layer)
COPY lib/ ./lib/
WORKDIR /app/lib
RUN mvn install:install-file -Dfile=a2j-2.0.4.jar -DgroupId=org.jzkit -DartifactId=a2j -Dversion=2.0.4 -Dpackaging=jar && \
    mvn install:install-file -Dfile=jzkit2_core-2.2.3.jar -DgroupId=org.jzkit -DartifactId=jzkit2_core -Dversion=2.2.3 -Dpackaging=jar && \
    mvn install:install-file -Dfile=jzkit2_jdbc_plugin-2.2.3.jar -DgroupId=org.jzkit -DartifactId=jzkit2_jdbc_plugin -Dversion=2.2.3 -Dpackaging=jar && \
    mvn install:install-file -Dfile=jzkit2_service-2.2.3.jar -DgroupId=org.jzkit -DartifactId=jzkit2_service -Dversion=2.2.3 -Dpackaging=jar && \
    mvn install:install-file -Dfile=jzkit2_z3950_plugin-2.2.3.jar -DgroupId=org.jzkit -DartifactId=jzkit2_z3950_plugin -Dversion=2.2.3 -Dpackaging=jar && \
    mvn install:install-file -Dfile=marc4j-2.5.1.beta.jar -DgroupId=org.marc4j -DartifactId=marc4j -Dversion=2.5.1.beta -Dpackaging=jar && \
    mvn install:install-file -Dfile=z3950server-1.0.2.jar -DgroupId=br.org.biblivre -DartifactId=z3950server -Dversion=1.0.2 -Dpackaging=jar && \
    mvn install:install-file -Dfile=itext-4.2.1.jar -DgroupId=com.lowagie -DartifactId=itext -Dversion=4.2.1 -Dpackaging=jar && \
    mvn install:install-file -Dfile=normalizer-2.6.jar -DgroupId=com.ibm.icu -DartifactId=normalizer -Dversion=2.6 -Dpackaging=jar

# Download dependencies (cached layer if pom.xml doesn't change)
WORKDIR /app
RUN mvn dependency:go-offline -B

# Copy source code and WebContent
COPY src/ ./src/
COPY WebContent/ ./WebContent/

# Build the application
RUN mvn clean package -DskipTests -o

# Production stage
FROM tomcat:8.5-jre8

# Install PostgreSQL client for health checks
RUN apt-get update && \
    apt-get install -y postgresql-client curl && \
    rm -rf /var/lib/apt/lists/*

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file
COPY --from=build /app/target/Biblivre4.war /usr/local/tomcat/webapps/ROOT.war

# Copy SQL scripts for database initialization
COPY sql/ /app/sql/

# Download PostgreSQL JDBC driver (compatible version)
ADD https://jdbc.postgresql.org/download/postgresql-42.5.4.jar /usr/local/tomcat/lib/postgresql-42.5.4.jar

# Copy entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Configure Tomcat for better performance
ENV CATALINA_OPTS="-Dfile.encoding=UTF-8 -Djava.awt.headless=true"

# Create directory for context configuration
RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

# Set entrypoint
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
