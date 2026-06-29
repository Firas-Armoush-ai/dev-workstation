# the only place where configuration is loaded.
# Every shell script begins with: source scripts/lib/common.sh
# Contains: project root, compose path, env loading, variables.


#!/usr/bin/env bash

set -euo pipefail

# ==========================================================
# Dev Workstation
# Shared configuration
# ==========================================================

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

COMPOSE_DIR="$PROJECT_ROOT/docker/compose"
COMPOSE_FILE="$COMPOSE_DIR/compose.yaml"

ENV_FILE="$COMPOSE_DIR/.env"

BACKUP_ROOT="$PROJECT_ROOT/docker/backups"

if [[ ! -f "$ENV_FILE" ]]; then
    echo "ERROR: .env file not found:"
    echo "$ENV_FILE"
    exit 1
fi

set -a
source "$ENV_FILE"
set +a

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
