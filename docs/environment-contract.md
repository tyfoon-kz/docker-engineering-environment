# Environment Contract

The application service expects:
- `APP_ENV` for runtime mode;
- `DB_HOST`, `DB_PORT`, `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` for database access;
- `REDIS_HOST`, `REDIS_PORT` for cache access.

The important point is that `DB_HOST` and `REDIS_HOST` point to Compose service names, not to host machine ports.
