#!/usr/bin/env bash
set -euo pipefail

cat <<'NOTES'
PhpStorm Docker runtime notes
-----------------------------
IDE role:
  PhpStorm is a Docker client. It connects to Docker Engine; it does not become Docker.

Expected Docker connection:
  Local Docker Engine through Docker Desktop or the local Linux Docker service.

Expected Compose service:
  app

Expected container project path:
  /var/www/html

Important boundary:
  A successful Docker Test Connection is only the door to Docker.
  PHP interpreter, Composer, tests and Xdebug are configured separately.

Troubleshooting "Cannot connect to Docker daemon":
  1. Start Docker Desktop or the Docker service.
  2. Check `docker version` in the terminal.
  3. Check Docker context.
  4. Check socket permissions.
  5. Make PhpStorm use the same Docker endpoint.
NOTES
