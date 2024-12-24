-- allow user to access the schema
GRANT USAGE ON SCHEMA "application" TO ${VegetablesUserName};
GRANT USAGE ON SCHEMA "application" TO ${VegetablesUserName};

-- minimize permissions
GRANT NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS ON SCHEMA "garden.db" TO ${VegetablesUserName};