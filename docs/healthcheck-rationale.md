# Healthcheck Rationale

- `postgres` uses `pg_isready` because "container started" is not enough for a database.
- `redis` uses `redis-cli ping` because a cache should prove that it is accepting commands.
- `app` uses a local HTTP check because the runtime is considered ready only when the PHP server answers.

Healthchecks here are local signals of readiness, not decorative lines in YAML.
