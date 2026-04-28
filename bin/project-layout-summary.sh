#!/usr/bin/env sh
set -eu

printf '%s\n' 'Docker project layout summary'
printf '%s\n' '- docker-compose.yml is the main entry point into the local environment.'
printf '%s\n' '- docker/ contains service-specific configuration grouped by runtime responsibility.'
printf '%s\n' '- docs/ explains naming rules, structure, and operational expectations.'
printf '%s\n' '- bin/ contains small helper scripts built on top of the same stable layout.'
