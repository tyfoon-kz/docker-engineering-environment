#!/usr/bin/env bash
set -euo pipefail

if [ ! -f docker-compose.yml ] && [ ! -f compose.yaml ]; then
    echo "No Compose file found. Expected docker-compose.yml or compose.yaml." >&2
    exit 1
fi

compose=(docker compose)
if [ ! -f .env ] && [ -f .env.example ]; then
    compose+=(--env-file .env.example)
fi

echo "Checking final Compose configuration..."
"${compose[@]}" config
