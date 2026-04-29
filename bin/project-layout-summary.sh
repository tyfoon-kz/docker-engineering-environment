#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_paths=(
  "docker-compose.yml"
  "public/index.php"
  "docker/php/Dockerfile"
  "docker/nginx/default.conf"
  "docs/project-structure.md"
  "docs/service-naming.md"
  "docs/automation-surface.md"
)

printf '%s\n' 'Docker project layout summary'
printf '%s\n' "Repository: ${root_dir}"
printf '%s\n' ''
printf '%s\n' 'Predictable entry points:'
printf '%s\n' '- docker-compose.yml: local stack contract'
printf '%s\n' '- docker/: service-specific Docker files and config'
printf '%s\n' '- bin/: friendly team commands'
printf '%s\n' '- docs/: memory of environment decisions'
printf '%s\n' ''
printf '%s\n' 'Required files:'

missing=0
for path in "${required_paths[@]}"; do
  if [[ -e "${root_dir}/${path}" ]]; then
    printf '  [ok] %s\n' "${path}"
  else
    printf '  [missing] %s\n' "${path}"
    missing=1
  fi
done

printf '%s\n' ''
printf '%s\n' 'Naming contract: app, nginx, postgres, redis, app-network, postgres-data, redis-data.'

if [[ "${missing}" -ne 0 ]]; then
  printf '%s\n' ''
  printf '%s\n' 'Some layout files are missing. Add them before asking a teammate to onboard from this repository.'
  exit 1
fi
