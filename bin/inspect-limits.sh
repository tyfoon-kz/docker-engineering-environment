#!/usr/bin/env bash
set -euo pipefail

containers=("ecommerce-limits-app" "ecommerce-limits-admin")

echo "== configured limits from docker inspect =="
for container in "${containers[@]}"; do
  if docker inspect "${container}" >/dev/null 2>&1; then
    docker inspect \
      --format '{{.Name}} memoryBytes={{.HostConfig.Memory}} nanoCpus={{.HostConfig.NanoCpus}} oomKilled={{.State.OOMKilled}} status={{.State.Status}}' \
      "${container}"
  else
    echo "${container}: not created. Run docker compose up -d first."
  fi
done

echo
echo "== live one-shot stats when containers are running =="
docker stats --no-stream "${containers[@]}" || true

echo
echo "== process view when containers are running =="
for container in "${containers[@]}"; do
  docker top "${container}" || true
done
