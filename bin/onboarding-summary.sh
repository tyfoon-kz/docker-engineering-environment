#!/usr/bin/env sh
set -eu

printf '%s\n' 'Environment onboarding summary'
printf '%s\n' '- Start with README.md and docs/environment-contract.md.'
printf '%s\n' '- Use .env.example as the baseline for local variables.'
printf '%s\n' '- Treat docs and helper scripts as part of the repository contract.'
printf '%s\n' '- A reproducible environment must work from repository artifacts, not from private memory.'
