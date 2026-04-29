#!/usr/bin/env bash
set -euo pipefail

paths=(
  "storage"
  "storage/logs"
  "storage/app/uploads"
  "bootstrap/cache"
)

echo "Host user: $(id -u):$(id -g)"
echo

for path in "${paths[@]}"; do
  if [ ! -d "$path" ]; then
    echo "Missing directory: $path" >&2
    exit 1
  fi

  echo "Inspecting $path"
  ls -ld "$path"

  tmp="$path/.write-check.$$"
  if touch "$tmp" 2>/dev/null; then
    rm -f "$tmp"
    echo "Writable: $path"
  else
    echo "Not writable: $path" >&2
    exit 1
  fi

  echo
done

echo "Check completed without chmod, chown, prune, or data deletion."
