#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

"$SCRIPT_DIR/backup-postgres.sh"

"$SCRIPT_DIR/backup-mysql.sh"

echo ""

echo "All backups completed successfully."
