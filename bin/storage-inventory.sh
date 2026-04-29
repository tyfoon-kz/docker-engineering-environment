#!/usr/bin/env bash
set -euo pipefail

compose=(docker compose)
if [ ! -f .env ] && [ -f .env.example ]; then
    compose+=(--env-file .env.example)
fi

echo "Rendered volume and mount configuration:"
"${compose[@]}" config | sed -n '/volumes:/,$p'

echo
echo "Project volumes known to Docker:"
docker volume ls --filter "label=com.docker.compose.project=${COMPOSE_PROJECT_NAME:-ecommerce-platform}" || true

echo
echo "This script is read-only. It does not run down -v, prune, rm, or cleanup commands."
