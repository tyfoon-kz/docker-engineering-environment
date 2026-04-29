# Environment Contract

Environment as code means the repository contains enough information for another developer to reproduce the local environment without private notes.

## Belongs in the repository

- `docker-compose.yml` or `compose.yaml` for the stack definition.
- `docker/` files used by local services.
- `.env.example` with safe variable names and example values.
- README onboarding steps.
- `docs/reproducibility-checklist.md`.
- `docs/upgrade-notes.md`.
- Safe `bin/` scripts that explain missing requirements.

## Does not belong in the repository

- Private `.env` files.
- Private keys.
- Production certificates.
- Personal database dumps.
- Temporary logs.
- Generated dependency folders unless the team has documented that strategy.

## Review rule

If a change affects local startup, ports, service names, variables, image versions or bootstrap steps, it must be reviewed like application code. The same pull request should update README, `.env.example`, docs and scripts.

