#!/usr/bin/env bash
set -euo pipefail

docker compose ps
echo
docker inspect --format '{{.Name}} => {{if .State.Health}}{{.State.Health.Status}}{{else}}no-healthcheck{{end}}' \
  ecommerce-health-valkey ecommerce-health-app
