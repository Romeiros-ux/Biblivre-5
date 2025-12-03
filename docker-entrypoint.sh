#!/bin/bash
set -e

echo "Configuring Biblivre with Supabase database..."

# Create context.xml with Supabase credentials
cat > /usr/local/tomcat/conf/Catalina/localhost/ROOT.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<Context displayName="Biblivre 5" path="/" crossContext="true">
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandoned="true" 
		removeAbandonedTimeout="60" 
		maxActive="20" 
		maxIdle="10" 
		maxWait="-1" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		name="jdbc/biblivre4" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require"
	/>
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandoned="true" 
		removeAbandonedTimeout="60" 
		maxActive="20" 
		maxIdle="10" 
		maxWait="-1" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		name="jdbc/biblivre3" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require"
	/>
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandoned="true" 
		removeAbandonedTimeout="60" 
		maxActive="20" 
		maxIdle="10" 
		maxWait="-1" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		name="jdbc/biblivre4_b3b_restore" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require"
	/>
</Context>
EOF

echo "Configuration completed. Starting Tomcat..."
echo "Note: Database must be initialized in Supabase before first access."
echo "Application will be available at: http://localhost:8080/"
echo ""
echo "Database Configuration:"
echo "  Host: ${DB_HOST}"
echo "  Port: ${DB_PORT}"
echo "  Database: ${DB_NAME}"
echo "  User: ${DB_USER}"
echo ""
echo "Checking database schema..."
if ! PGPASSWORD="${DB_PASSWORD}" psql -h "${DB_HOST}" -p "${DB_PORT}" -U "${DB_USER}" -d "${DB_NAME}" -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'global';" 2>/dev/null | grep -q "55"; then
    echo "WARNING: Database schema not found or incomplete!"
    echo "Please execute the SQL files in Supabase SQL Editor:"
    echo "  1. sql/split/01_estrutura_final.sql"
    echo "  2. sql/split/02_dados_final_parte1.sql"
    echo "  3. sql/split/03_dados_final_parte2.sql"
    echo "  4. sql/split/04_dados_final_parte3.sql"
else
    echo "Database schema verified: 55 tables found in 'global' schema"
fi
echo ""

# Execute the main command
exec "$@"
