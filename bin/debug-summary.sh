#!/usr/bin/env bash
set -euo pipefail

cat <<'SUMMARY'
PhpStorm Xdebug summary
-----------------------
Expected service:
  app

Expected container workdir:
  /var/www/html

Expected path mapping:
  host repository root <-> /var/www/html

Xdebug location:
  Inside the PHP container, not on the host.

PhpStorm role:
  Listen on the host for incoming Xdebug connections.

Expected local debug values:
  xdebug.mode=debug,develop
  xdebug.start_with_request=trigger
  xdebug.client_host=host.docker.internal
  xdebug.client_port=9003
  xdebug.discover_client_host=0

Common gotchas:
  firewall blocks port 9003
  wrong client_host for Linux
  missing path mapping
  trigger was not sent
  PhpStorm listener is off

Safety:
  Keep Xdebug local-only. Do not enable it as a production default.
SUMMARY
