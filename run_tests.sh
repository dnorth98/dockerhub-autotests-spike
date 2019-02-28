#!/bin/bash

RESULT=0

echo "Running tests"

export PGPASSWORD=password 

COUNT=$(psql -t -h postgres -U postgres -d backup_test -c "select count(*) from schema_migrations" | xargs)

echo "the count is ${COUNT}"

if [ "${COUNT}" -ne 4 ]; then
    echo "Tests failed"
    RESULT=1
else
    echo "Tests passed"
    RESULT=0
fi 

exit ${RESULT}