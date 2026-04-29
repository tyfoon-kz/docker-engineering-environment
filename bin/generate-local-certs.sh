#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CERT_DIR="$ROOT_DIR/docker/traefik/certs"
CRT_FILE="$CERT_DIR/localho.st.crt"
KEY_FILE="$CERT_DIR/localho.st.key"
CONF_FILE="$CERT_DIR/localho.st.cnf"

APP_DOMAIN="${APP_DOMAIN:-ecommerce.localho.st}"
API_DOMAIN="${API_DOMAIN:-api.ecommerce.localho.st}"
ADMIN_DOMAIN="${ADMIN_DOMAIN:-admin.ecommerce.localho.st}"
TRAEFIK_DASHBOARD_DOMAIN="${TRAEFIK_DASHBOARD_DOMAIN:-traefik.ecommerce.localho.st}"

if ! command -v openssl >/dev/null 2>&1; then
  echo "openssl is required to generate local certificates." >&2
  exit 1
fi

umask 077
mkdir -p "$CERT_DIR"

cat >"$CONF_FILE" <<EOF
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn
x509_extensions = v3_req

[dn]
CN = $APP_DOMAIN

[v3_req]
subjectAltName = @alt_names

[alt_names]
DNS.1 = $APP_DOMAIN
DNS.2 = $API_DOMAIN
DNS.3 = $ADMIN_DOMAIN
DNS.4 = $TRAEFIK_DASHBOARD_DOMAIN
EOF

openssl req -x509 -nodes -newkey rsa:2048 \
  -days 365 \
  -keyout "$KEY_FILE" \
  -out "$CRT_FILE" \
  -config "$CONF_FILE" \
  -extensions v3_req

rm -f "$CONF_FILE"

echo "Generated:"
echo "  $CRT_FILE"
echo "  $KEY_FILE"
echo "These files are for local development and are ignored by Git."
