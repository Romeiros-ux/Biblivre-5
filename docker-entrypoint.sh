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
echo "Note: Database will be initialized automatically on first access through the application."
echo "Application will be available at: http://localhost:8080/"

# Execute the main command
exec "$@"
