#!/usr/bin/env bash
set -euo pipefail

docker inspect --format '{{.Name}} memory={{.HostConfig.Memory}} cpu={{.HostConfig.NanoCpus}}' \
  ecommerce-limits-app ecommerce-limits-admin
