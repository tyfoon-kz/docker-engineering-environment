#!/usr/bin/env bash
set -euo pipefail

compose=(docker compose)
if [ ! -f .env ] && [ -f .env.example ]; then
    compose+=(--env-file .env.example)
fi

echo "Compose service status:"
"${compose[@]}" ps

echo
echo "Rendered healthcheck configuration:"
"${compose[@]}" config | sed -n '/healthcheck:/,/networks:/p'

echo
echo "Recent app/mysql/redis logs:"
"${compose[@]}" logs --tail=40 app mysql redis || true

echo
echo "This script only reads status and logs. It does not stop containers or remove volumes."
