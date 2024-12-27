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
R__<name>.sql
```

# Workflow
This section describes the steps to perform in order to add a new migration:
1. Create a new `SQL` file, following the naming convention.
2. Populate the script.
3. Run `docker-compose up` to execute interactively.
4. Run `docker-compose down` to clean up any containers.