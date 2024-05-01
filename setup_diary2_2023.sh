#!/bin/sh
PG_USER='postgres'
DB_NAME='diary2'
GH_PAGES="https://PatrickHarumi.github.io/rdb-study/"
SQL_DUMP="dump_${DB_NAME}_2023.sql"

dropdb --if-exists "$DB_NAME"
createdb -T template0 "$DB_NAME"

curl -o- "${GH_PAGES}${SQL_DUMP}" | psql "$DB_NAME"
