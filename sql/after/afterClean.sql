-- cleanup leftover objects
-- users,schemas,etc

-- cleanup leftover role
DROP ROLE ${VegetablesUserName};

-- cleanup leftover schema
DROP SCHEMA "application" CASCADE;