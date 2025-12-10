#!/bin/bash
set -e

echo "Configuring Biblivre with Supabase database..."

# Create context.xml with Supabase credentials (DBCP2 properties)
cat > /usr/local/tomcat/conf/Catalina/localhost/ROOT.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<Context displayName="Biblivre 5" path="/" crossContext="true">
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandonedOnBorrow="true" 
		removeAbandonedTimeout="60" 
		maxTotal="3" 
		maxIdle="2"
		minIdle="0"
		initialSize="1"
		maxWaitMillis="10000" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		validationQuery="SELECT 1"
		testOnBorrow="true"
		testWhileIdle="true"
		timeBetweenEvictionRunsMillis="30000"
		name="jdbc/biblivre4" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require&amp;currentSchema=public&amp;pgbouncer=true&amp;prepareThreshold=0&amp;loggerLevel=TRACE"
	/>
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandonedOnBorrow="true" 
		removeAbandonedTimeout="60" 
		maxTotal="3" 
		maxIdle="2"
		minIdle="0"
		initialSize="1"
		maxWaitMillis="10000" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		validationQuery="SELECT 1"
		testOnBorrow="true"
		testWhileIdle="true"
		timeBetweenEvictionRunsMillis="30000"
		name="jdbc/biblivre3" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require&amp;currentSchema=public&amp;pgbouncer=true&amp;prepareThreshold=0&amp;loggerLevel=TRACE"
	/>
	<Resource 
		auth="Container" 
		driverClassName="org.postgresql.Driver" 
		logAbandoned="false" 
		removeAbandonedOnBorrow="true" 
		removeAbandonedTimeout="60" 
		maxTotal="3" 
		maxIdle="2"
		minIdle="0"
		initialSize="1"
		maxWaitMillis="10000" 
		username="${DB_USER}" 
		password="${DB_PASSWORD}" 
		type="javax.sql.DataSource" 
		accessToUnderlyingConnectionAllowed="true" 
		validationQuery="SELECT 1"
		testOnBorrow="true"
		testWhileIdle="true"
		timeBetweenEvictionRunsMillis="30000"
		name="jdbc/biblivre4_b3b_restore" 
		url="jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=require&amp;currentSchema=public&amp;pgbouncer=true&amp;prepareThreshold=0&amp;loggerLevel=TRACE"
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
echo "Connecting to database..."
echo "If application fails to start, verify database is initialized."
echo ""

# Execute the main command
exec "$@"
