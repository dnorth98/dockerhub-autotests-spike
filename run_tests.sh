#!/bin/bash

echo "Running tests 4"

PGPASSWORD=password psql -h postgres -U postgres -d backup_test -c "select count(*) from schema_migrations"

exit 0
