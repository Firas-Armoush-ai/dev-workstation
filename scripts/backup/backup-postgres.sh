#!/usr/bin/env bash

source "$(dirname "$0")/../lib/common.sh"

BACKUP_DIR="$BACKUP_ROOT/postgres"

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/postgres_${TIMESTAMP}.sql"

echo ""
echo "Creating PostgreSQL backup..."
echo ""

docker exec postgres pg_dump \
    -U "$POSTGRES_USER" \
    "$POSTGRES_DB" \
    > "$BACKUP_FILE"

echo "Backup completed."

echo "$BACKUP_FILE"
