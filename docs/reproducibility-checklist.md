# Reproducibility Checklist

A new developer should be able to complete this checklist from the repository alone.

## Files

- [ ] `README.md` explains prerequisites and first run.
- [ ] `.env.example` lists required local variables.
- [ ] `docker-compose.yml` or `compose.yaml` is present.
- [ ] `docs/environment-contract.md` explains what belongs in Git.
- [ ] `docs/upgrade-notes.md` explains pinned versions and upgrades.
- [ ] `bin/check-environment-contract.sh` reports missing files or variables clearly.

## Commands

- [ ] `cp .env.example .env`
- [ ] `bin/check-environment-contract.sh`
- [ ] `docker compose config`
- [ ] `docker compose up -d`
- [ ] `docker compose ps`
- [ ] `docker compose logs -f app`

## Drift checks

- [ ] README service names match compose service names.
- [ ] `.env.example` variables match application and compose expectations.
- [ ] Image tags are pinned instead of relying on accidental `latest`.
- [ ] Upgrade notes mention version changes.

Do not mark Docker runtime as tested unless the commands were actually run on the machine being reported.

