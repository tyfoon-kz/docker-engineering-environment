#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' 'Environment onboarding summary'
printf '%s\n' '1. Read README.md.'
printf '%s\n' '2. Copy .env.example to .env.'
printf '%s\n' '3. Run bin/check-environment-contract.sh.'
printf '%s\n' '4. Run docker compose config before docker compose up -d.'
printf '%s\n' ''
printf '%s\n' 'This script is informational only. It does not start or stop Docker.'

