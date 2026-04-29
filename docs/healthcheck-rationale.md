# Healthcheck Rationale

- `mysql` uses `mysqladmin ping` because the database can be running before it is ready.
- `redis` uses `redis-cli ping` because it is lightweight and clear.
- `app` checks the local PHP server port.
- `web` checks a local HTTP response from Nginx.

Healthchecks do not run destructive or expensive commands.
