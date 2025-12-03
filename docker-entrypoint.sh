#!/bin/bash
set -e

# Wait for database to be ready
echo "Waiting for database to be ready..."
until PGPASSWORD=$DB_PASSWORD psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -c '\q'; do
  >&2 echo "Database is unavailable - sleeping"
  sleep 2
done

>&2 echo "Database is up - executing command"

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

# Check if database schema exists, if not initialize it
SCHEMA_EXISTS=$(PGPASSWORD=$DB_PASSWORD psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -tAc "SELECT 1 FROM information_schema.schemata WHERE schema_name = 'global'" || echo "0")

if [ "$SCHEMA_EXISTS" != "1" ]; then
  echo "Initializing database schema..."
  
  # Check if SQL files exist in the container
  if [ -f /app/sql/createdatabase.sql ] && [ -f /app/sql/biblivre4.sql ]; then
    PGPASSWORD=$DB_PASSWORD psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -f /app/sql/createdatabase.sql || true
    PGPASSWORD=$DB_PASSWORD psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -f /app/sql/biblivre4.sql || true
    echo "Database schema initialized!"
  else
    echo "Warning: SQL initialization files not found. Please initialize the database manually."
  fi
else
  echo "Database schema already exists. Skipping initialization."
fi

# Execute the main command
exec "$@"
