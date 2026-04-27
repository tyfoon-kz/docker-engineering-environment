#!/usr/bin/env sh

set -eu

for path in storage bootstrap/cache; do
  if [ -w "$path" ]; then
    echo "$path: writable"
  else
    echo "$path: not writable"
    exit 1
  fi
done
