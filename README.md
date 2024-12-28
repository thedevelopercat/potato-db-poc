# Overview
This repository contains the relevant SQL scripts to set up the database for our `potato-poc` application.

# Technologies
The following relevant technologies are:
1. PostgreSQL 17 as our database engine.
2. Flyway to manage the deployment of SQL scripts on the database.

# Conventions
This section describes the naming conventions used throughout the database project.

## Migration naming
The migration files (`SQL` scripts) need to have a very specific naming scheme, in order for flyway to pick them up:
```
V<version number>__<name>.sql
```

## Repeatable script
A repeatable script is executed on every migrate command. These scripts needs to be placed in the `sql/repeatable` directory. Their naming convention is as follows:
```
R__<name>_<detailX>.sql
```

# Workflow
This section describes the steps to perform in order to add a new migration:
1. Create a new `SQL` file, following the naming convention.
2. Populate the script.
3. Run `docker-compose up` to execute interactively.
4. Run `docker-compose down` to clean up any containers.

# CI
An enterprise key is needed to leverage all the features of the pipeline.

## Databases used in this CI pipeline
The pipeline is linked to 3 databases:
1. `build` this database is dropped and recreated from scratch on every run. This is also where we check if prod has had any drift.
2. `test` this database is upgraded to newer versions automatically.
3. `prod` this is the production database. 

## Setup a dedicated user for Flyway
When running and connecting to a real PGSQL database, a new user should be created using the management UI.other users:
```
GRANT ALL PRIVILEGES ON DATABASE build TO flyway;
GRANT ALL PRIVILEGES ON DATABASE test TO flyway;
GRANT ALL PRIVILEGES ON DATABASE production TO flyway;
```