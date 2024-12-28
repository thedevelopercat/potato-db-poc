-- cleanup leftover objects
-- users,schemas,etc

-- cleanup leftover role
DROP ROLE IF EXISTS ${VegetablesUserName};

-- cleanup leftover schema
DROP SCHEMA IF EXISTS "application" CASCADE;