#!/usr/bin/env bash
set -euo pipefail

docker compose ps
echo
echo "---- healthy-web logs ----"
docker compose logs --tail=20 healthy-web
echo
echo "---- broken-worker logs ----"
docker compose logs --tail=20 broken-worker
