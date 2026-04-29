#!/usr/bin/env bash
set -euo pipefail

containers=("ecommerce-health-valkey" "ecommerce-health-app")

echo "== compose state =="
docker compose ps
echo

echo "== health state =="
for container in "${containers[@]}"; do
  if docker inspect "${container}" >/dev/null 2>&1; then
    docker inspect \
      --format '{{.Name}} status={{.State.Status}} health={{if .State.Health}}{{.State.Health.Status}}{{else}}no-healthcheck{{end}} failingStreak={{if .State.Health}}{{.State.Health.FailingStreak}}{{else}}n/a{{end}}' \
      "${container}"
  else
    echo "${container}: not created"
  fi
done

echo
echo "== recent health log entries =="
for container in "${containers[@]}"; do
  if docker inspect "${container}" >/dev/null 2>&1; then
    echo "-- ${container} --"
    docker inspect \
      --format '{{range .State.Health.Log}}{{.End}} exit={{.ExitCode}} output={{printf "%q" .Output}}{{println}}{{end}}' \
      "${container}" || true
  fi
done
