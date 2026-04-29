#!/usr/bin/env bash
set -euo pipefail

services=("healthy-web" "broken-worker")

echo "== compose services =="
docker compose ps
echo

for service in "${services[@]}"; do
  echo "== logs: ${service} =="
  docker compose logs --tail=40 "${service}" || true
  echo
done

echo "== inspect state =="
for container in ecommerce-healthy-web ecommerce-broken-worker; do
  if docker inspect "${container}" >/dev/null 2>&1; then
    docker inspect \
      --format '{{.Name}} status={{.State.Status}} exitCode={{.State.ExitCode}} oomKilled={{.State.OOMKilled}} restartCount={{.RestartCount}}' \
      "${container}"
  else
    echo "${container}: not created"
  fi
done

echo
echo "== running processes for healthy service =="
docker top ecommerce-healthy-web || true

echo
echo "== one-shot stats =="
docker stats --no-stream || true
