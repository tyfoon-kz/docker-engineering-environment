#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  ".env.example"
  "README.md"
  "public/index.php"
  "docker/php/Dockerfile"
  "docker/nginx/default.conf"
  "docs/environment-contract.md"
  "docs/reproducibility-checklist.md"
  "docs/upgrade-notes.md"
)

required_variables=(
  "APP_NAME"
  "APP_ENV"
  "APP_URL"
  "DB_HOST"
  "DB_PORT"
  "DB_DATABASE"
  "DB_USERNAME"
  "DB_PASSWORD"
  "REDIS_HOST"
  "REDIS_PORT"
)

missing=0

printf '%s\n' 'Checking environment contract files...'
for path in "${required_files[@]}"; do
  if [[ -f "${root_dir}/${path}" ]]; then
    printf '  [ok] %s\n' "${path}"
  else
    printf '  [missing] %s\n' "${path}"
    missing=1
  fi
done

if [[ ! -f "${root_dir}/docker-compose.yml" && ! -f "${root_dir}/compose.yaml" ]]; then
  printf '  [missing] docker-compose.yml or compose.yaml\n'
  missing=1
else
  printf '  [ok] compose entry point exists\n'
fi

printf '%s\n' ''
printf '%s\n' 'Checking .env.example variables...'
for variable in "${required_variables[@]}"; do
  if grep -Eq "^${variable}=" "${root_dir}/.env.example"; then
    printf '  [ok] %s\n' "${variable}"
  else
    printf '  [missing] %s in .env.example\n' "${variable}"
    missing=1
  fi
done

printf '%s\n' ''
printf '%s\n' 'Optional drift check: run docker compose config if Docker is available.'
printf '%s\n' 'This script does not claim Docker runtime testing.'

if [[ "${missing}" -ne 0 ]]; then
  printf '%s\n' ''
  printf '%s\n' 'Environment contract is incomplete. Fix missing files or variables before onboarding a teammate.'
  exit 1
fi

printf '%s\n' ''
printf '%s\n' 'Environment contract files look complete.'
