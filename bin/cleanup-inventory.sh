#!/usr/bin/env bash
set -euo pipefail

run_section() {
  local title="$1"
  shift

  echo "---- ${title} ----"
  if ! "$@"; then
    echo "[warn] command failed: $*"
  fi
  echo
}

run_section "docker system df" docker system df
run_section "images" docker image ls
run_section "containers" docker ps -a
run_section "volumes" docker volume ls
run_section "networks" docker network ls
run_section "builder cache" docker builder du

echo "Inventory complete. No cleanup command was executed."
echo "Review docs/prune-risk-matrix.md before deleting anything, especially volumes."
