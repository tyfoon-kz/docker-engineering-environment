# Automation Surface

The automation surface is the set of paths and names that scripts may rely on.

## Stable paths

- `docker-compose.yml`
- `docker/php/Dockerfile`
- `docker/nginx/default.conf`
- `bin/project-layout-summary.sh`
- `docs/project-structure.md`
- `docs/service-naming.md`

## Stable service names

Scripts may refer to `app`, `nginx`, `postgres` and `redis`.

## Script rules

Scripts in `bin/` should:
- start with `set -euo pipefail`;
- print clear messages for beginners;
- check before assuming a file exists;
- avoid deleting files, containers, volumes or images without a separate explicit command and warning.

This branch documents the layout. It does not claim the Docker runtime was tested.

