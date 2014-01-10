MIGRATION_DIR='models/migrations'
DB_PATH='../shared/db/app_name.sqlite3'

if [[ $1 == 'down' ]]; then
  level=0
  if [[ ! -z $2 ]]; then
    level=$2
  fi

  echo "Migrating down to $level"
  sequel -m ${MIGRATION_DIR} -M $level sqlite://${DB_PATH}
else
  sequel -m ${MIGRATION_DIR}  sqlite://${DB_PATH}
fi
