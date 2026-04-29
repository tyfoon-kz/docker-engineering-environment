# Docker Engineering Environment

This reference branch models `ecommerce-platform` as a repository-owned local environment.

## Onboarding Runbook

### Prerequisites

- Docker Engine with Docker Compose plugin.
- Git.
- A shell that can run Bash scripts.

### First run

```bash
cp .env.example .env
bin/check-environment-contract.sh
docker compose config
docker compose up -d
```

Expected local entry points:
- application HTTP entry: `http://localhost:8080`;
- app service: `app`;
- database service: `postgres`;
- cache service: `redis`.

### Useful checks

```bash
docker compose ps
docker compose logs -f app
docker compose exec app php -v
```

### Shutdown

```bash
docker compose down
```

Use `docker compose down -v` only when you intentionally want to delete local database and cache volumes.

## Environment Contract

- `.env.example` lists required local variables without private secrets.
- `docs/environment-contract.md` defines what belongs in the repository.
- `docs/reproducibility-checklist.md` is the onboarding checklist.
- `docs/upgrade-notes.md` records version changes.
- `bin/check-environment-contract.sh` checks the required files and variables.

This branch documents and validates the contract. It does not claim Docker containers were runtime-tested.

