#!/usr/bin/env bash
set -euo pipefail

cat <<'SUMMARY'
Container tooling summary
-------------------------
Expected interpreter service:
  app

Expected container workdir:
  /var/www/html

Expected path mapping:
  host repository root <-> /var/www/html

Composer should run through:
  docker compose run --rm app composer install
  docker compose run --rm app composer validate

Tests should run through:
  docker compose run --rm app ./vendor/bin/phpunit
  docker compose run --rm app ./vendor/bin/pest

First checks on failure:
  1. Is PhpStorm using service app?
  2. Is the workdir /var/www/html?
  3. Was vendor created by container Composer?
  4. Do host path and container path match?
  5. Does container PHP have required extensions?
SUMMARY
