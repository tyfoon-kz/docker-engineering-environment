#!/usr/bin/env bash
set -euo pipefail

print_safe() {
  local name="$1"
  local value="${!name:-}"

  if [[ -n "${value}" ]]; then
    echo "${name}=${value}"
  else
    echo "${name}=missing"
  fi
}

print_secret_state() {
  local name="$1"
  local value="${!name:-}"

  if [[ -n "${value}" ]]; then
    echo "${name}=is set"
  else
    echo "${name}=is missing"
  fi
}

echo "Safe runtime configuration diagnostics"
print_safe APP_ENV
print_safe DB_HOST
print_safe REDIS_HOST

echo "Secret presence diagnostics"
print_secret_state DB_PASSWORD
print_secret_state REDIS_PASSWORD
print_secret_state APP_KEY
