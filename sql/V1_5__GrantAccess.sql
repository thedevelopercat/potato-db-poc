-- grant the user access to the table
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA "application" TO ${VegetablesUserName};

-- allow select on sequences
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA "application" TO ${VegetablesUserName};