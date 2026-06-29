#!/usr/bin/env bash

source "$(dirname "$0")/../lib/common.sh"

if [[ $# -ne 1 ]]; then
    echo "Usage:"
    echo "./restore-postgres.sh backup.sql"
    exit 1
fi

BACKUP_FILE="$1"

echo ""
echo "Restoring PostgreSQL..."
echo ""

docker exec -i postgres \
    psql \
    -U "$POSTGRES_USER" \
    "$POSTGRES_DB" \
    < "$BACKUP_FILE"

echo ""

echo "Restore completed."
