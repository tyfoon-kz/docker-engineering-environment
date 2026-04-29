# Healthcheck Rationale

Healthchecks are lightweight pulse checks:

- `mysqladmin ping` for MySQL;
- `redis-cli ping` for Redis;
- a PHP socket check for `app`;
- a local HTTP check for `web`.

They do not run migrations, seeders, cleanup, or volume commands.
