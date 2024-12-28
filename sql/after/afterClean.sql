-- cleanup leftover objects
-- users,schemas,etc

-- cleanup leftover schema
DROP SCHEMA IF EXISTS "application" CASCADE;

-- cleanup leftover role
DROP ROLE IF EXISTS ${VegetablesUserName};