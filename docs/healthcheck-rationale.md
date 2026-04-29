# Healthcheck Rationale

Healthchecks are small pulse checks.

- `mysql`: `mysqladmin ping` checks whether MySQL accepts a basic connection. `start_period: 30s` gives the database time to initialize.
- `redis`: `redis-cli ping` is the standard lightweight Redis check.
- `app`: a tiny PHP command checks that the local PHP server listens on port `9000`.
- `web`: `wget` checks that Nginx answers HTTP locally.

The checks are intentionally cheap. They do not run migrations, seed data, or delete anything.
