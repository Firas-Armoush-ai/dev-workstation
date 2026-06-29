#!/usr/bin/env bash

source "$(dirname "$0")/../lib/common.sh"

if [[ $# -ne 1 ]]; then
    echo "Usage:"
    echo "./restore-mysql.sh backup.sql"
    exit 1
fi

BACKUP_FILE="$1"

echo ""
echo "Restoring MySQL..."
echo ""

cat "$BACKUP_FILE" | docker exec -i mysql \
    mysql \
    -uroot \
    -p"$MYSQL_ROOT_PASSWORD" \
    "$MYSQL_DATABASE"

echo ""

echo "Restore completed."
