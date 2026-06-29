#!/usr/bin/env bash

source "$(dirname "$0")/../lib/common.sh"

BACKUP_DIR="$BACKUP_ROOT/mysql"

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/mysql_${TIMESTAMP}.sql"

echo ""
echo "Creating MySQL backup..."
echo ""

docker exec mysql mysqldump \
    -uroot \
    -p"$MYSQL_ROOT_PASSWORD" \
    "$MYSQL_DATABASE" \
    > "$BACKUP_FILE"

echo "Backup completed."

echo "$BACKUP_FILE"
