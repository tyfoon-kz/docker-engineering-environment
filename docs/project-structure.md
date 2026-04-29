# Project Structure

This repository uses a predictable Docker layout so a new developer can find the environment without asking where things live.

## Root entry points

- `docker-compose.yml` is the local stack contract.
- `docker/` stores service-specific Dockerfiles and config.
- `bin/` stores friendly team commands.
- `docs/` stores environment decisions and onboarding notes.
- `.env.example` belongs in the repository when variables are required; private `.env` files do not.

## Docker directory

- `docker/php/Dockerfile` defines the application runtime image.
- `docker/nginx/default.conf` defines the local web entry point.
- `docker/postgres/README.md` documents database-specific local decisions.

## What belongs in Git

Commit reproducible contracts: compose files, Dockerfiles, safe config templates, docs and helper scripts.

Do not commit private `.env` values, private keys, production certificates, personal database dumps, temporary logs or generated files that can be rebuilt. Dependencies such as `vendor/` require an explicit team strategy before they are committed.

## Beginner path

1. Open `README.md`.
2. Inspect `docker-compose.yml`.
3. Read `docs/service-naming.md`.
4. Run `bin/project-layout-summary.sh`.

