# Contains

# Docker version
# Compose version
# PostgreSQL check
# Redis check
# MySQL check


#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/../lib/common.sh"

GREEN="\033[0;32m"
RED="\033[0;31m"
BLUE="\033[1;34m"
NC="\033[0m"

pass() {
    printf "${GREEN}OK${NC}\n"
}

fail() {
    printf "${RED}FAILED${NC}\n"
}

echo ""
echo -e "${BLUE}==============================================${NC}"
echo -e "${BLUE} Dev Workstation Doctor${NC}"
echo -e "${BLUE}==============================================${NC}"
echo ""

printf "%-24s" "Docker Engine"

if docker version >/dev/null 2>&1; then
    VERSION=$(docker version --format '{{.Client.Version}}')
    printf "%-12s" "$VERSION"
    pass
else
    fail
fi

printf "%-24s" "Docker Compose"

if docker compose version >/dev/null 2>&1; then
    VERSION=$(docker compose version --short)
    printf "%-12s" "$VERSION"
    pass
else
    fail
fi

printf "%-24s" "Compose File"

if docker compose -f "$COMPOSE_FILE" config >/dev/null 2>&1; then
    printf "%-12s" "Valid"
    pass
else
    fail
fi

printf "%-24s" "PostgreSQL"

if docker exec postgres pg_isready \
    -U "$POSTGRES_USER" \
    -d "$POSTGRES_DB" >/dev/null 2>&1; then

    printf "%-12s" "Healthy"
    pass
else
    fail
fi

printf "%-24s" "Redis"

if [[ "$(docker exec redis redis-cli ping)" == "PONG" ]]; then
    printf "%-12s" "Healthy"
    pass
else
    fail
fi

printf "%-24s" "MySQL"

if docker exec mysql mysqladmin ping \
    -uroot \
    -p"$MYSQL_ROOT_PASSWORD" >/dev/null 2>&1; then

    printf "%-12s" "Healthy"
    pass
else
    fail
fi

echo ""
echo -e "${GREEN}Workstation ready for AI development.${NC}"
echo ""
