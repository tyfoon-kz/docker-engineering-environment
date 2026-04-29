#!/usr/bin/env bash
set -euo pipefail

compose=(docker compose)
if [ ! -f .env ] && [ -f .env.example ]; then
    compose+=(--env-file .env.example)
fi

echo "Compose status:"
"${compose[@]}" ps

echo
echo "Rendered network and port configuration:"
"${compose[@]}" config | sed -n '/services:/,/networks:/p'

run_in_app() {
    local label="$1"
    shift
    echo
    echo "$label"
    "${compose[@]}" exec -T app "$@" || echo "Skipped or failed: $label"
}

run_in_app "DNS check for mysql:" sh -lc 'command -v getent >/dev/null && getent hosts mysql || echo "getent is not available"'
run_in_app "TCP check for mysql:3306:" sh -lc 'command -v nc >/dev/null && nc -zv mysql 3306 || echo "nc is not available"'
run_in_app "HTTP check for web:" sh -lc 'command -v curl >/dev/null && curl -fsS http://web/ >/dev/null || echo "curl is not available"'

echo
echo "Host access rule: open http://localhost:${WEB_PUBLISHED_PORT:-8080}"
