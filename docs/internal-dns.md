# Internal DNS

Inside Compose:

- `mysql` resolves to the MySQL service;
- `redis` resolves to the Redis service;
- `app` resolves to the PHP runtime service.

Use `DB_HOST=mysql` inside containers. Use `localhost:${WEB_PUBLISHED_PORT}` from the host.
