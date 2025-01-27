#!/bin/sh
PG_USER='postgres'
DB_NAME='netslang'
GH_PAGES="https://nnn-training.github.io/rdb-study/"
SQL_DUMP="dump_${DB_NAME}.sql"

dropdb --if-exists "$DB_NAME"
createdb -T template0 "$DB_NAME"

curl -o- "${GH_PAGES}${SQL_DUMP}" | psql "$DB_NAME"
