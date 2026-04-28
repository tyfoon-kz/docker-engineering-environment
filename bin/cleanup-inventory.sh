#!/usr/bin/env bash
set -uo pipefail

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
