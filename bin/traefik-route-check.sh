#!/usr/bin/env bash
set -euo pipefail

APP_DOMAIN="${APP_DOMAIN:-ecommerce.localho.st}"
API_DOMAIN="${API_DOMAIN:-api.ecommerce.localho.st}"
ADMIN_DOMAIN="${ADMIN_DOMAIN:-admin.ecommerce.localho.st}"
TRAEFIK_DASHBOARD_DOMAIN="${TRAEFIK_DASHBOARD_DOMAIN:-traefik.ecommerce.localho.st}"

check_url() {
  local url="$1"

  echo "Checking $url"
  curl --fail --silent --show-error --head "$url" >/dev/null
}

check_url "http://$APP_DOMAIN"
check_url "http://$API_DOMAIN"
check_url "http://$ADMIN_DOMAIN"
check_url "http://$TRAEFIK_DASHBOARD_DOMAIN/dashboard/"

echo "All Traefik HTTP routes answered."
