# Service Naming

## Naming rules

- Use short, stable names that reflect the runtime role: `app`, `db`, `redis`, `traefik`.
- Avoid project-specific novelty names for standard infrastructure services.
- Keep container names aligned with the project prefix, for example `ecommerce-app` and `ecommerce-db`.

## Why stability matters

Stable service names make onboarding, troubleshooting, and automation cheaper.
People and scripts can assume a familiar vocabulary instead of learning a new private dialect on every project.

## Rule

Rename a standard service only when its responsibility truly changes, not because a different label sounds nicer.

