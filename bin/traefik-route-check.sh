#!/usr/bin/env bash
set -euo pipefail

APP_DOMAIN="${APP_DOMAIN:-ecommerce.localho.st}"
API_DOMAIN="${API_DOMAIN:-api.ecommerce.localho.st}"
ADMIN_DOMAIN="${ADMIN_DOMAIN:-admin.ecommerce.localho.st}"
TRAEFIK_DASHBOARD_DOMAIN="${TRAEFIK_DASHBOARD_DOMAIN:-traefik.ecommerce.localho.st}"
TRAEFIK_HTTP_PORT="${TRAEFIK_HTTP_PORT:-80}"

check_url() {
  local domain="$1"
  local path="${2:-/}"
  local url="http://127.0.0.1:$TRAEFIK_HTTP_PORT$path"

  echo "Checking http://$domain:$TRAEFIK_HTTP_PORT$path"

  for attempt in $(seq 1 20); do
    if curl --fail --silent --show-error -H "Host: $domain" "$url" >/dev/null; then
      return 0
    fi

    sleep 1
  done

  curl --fail --show-error -H "Host: $domain" "$url" >/dev/null
}

check_url "$APP_DOMAIN"
check_url "$API_DOMAIN"
check_url "$ADMIN_DOMAIN"
check_url "$TRAEFIK_DASHBOARD_DOMAIN" "/dashboard/"

echo "All Traefik HTTP routes answered."
