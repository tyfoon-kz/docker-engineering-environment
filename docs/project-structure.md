# Project Structure

## Baseline layout

- `docker-compose.yml` — the main local environment entry point.
- `docker/` — service-specific infrastructure files.
- `docker/php/` — PHP runtime config.
- `docker/mysql/` — MySQL overrides and support config.
- `docker/traefik/` — reverse-proxy config and static files.
- `docs/` — engineering notes, onboarding, and operational rules.
- `bin/` — small helper scripts and summaries for humans.

## Why this layout works

The structure separates runtime concerns by service while keeping the top-level entry points obvious.
A developer can infer where to look for compose, service config, docs, and helper scripts without guessing.

## Rule

If a file changes the local environment, its location should be predictable from the repository structure.

