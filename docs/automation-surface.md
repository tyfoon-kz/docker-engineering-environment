# Automation Surface

## Predictable entry points

Automation becomes cheaper when scripts can rely on the same entry points:

- `docker-compose.yml` for the stack definition
- `docker/` for service config
- `docs/` for human-readable rules
- `bin/` for small helper commands

## Why structure affects automation

When every project hides compose files and configs in different places, helper scripts become full of exceptions.
When the layout is stable, commands such as `bin/up`, `bin/test`, and `bin/debug-summary` can be reused with minimal changes.

## Rule

The structure should help scripts discover the environment instead of forcing scripts to guess it.

