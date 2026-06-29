# Contains: docker ps formatted output.


#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/../lib/common.sh"

echo ""
echo "=============================================================="
echo " Running Containers"
echo "=============================================================="
echo ""

docker ps \
--format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

echo ""

echo "Volumes"

docker volume ls

echo ""

echo "Networks"

docker network ls
