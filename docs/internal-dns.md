# Internal DNS

Inside Compose, `mysql`, `redis`, and `app` are DNS names created from service names.

Use `DB_HOST=mysql` and `REDIS_HOST=redis` inside containers. Use `localhost:${WEB_PUBLISHED_PORT}` from the host.
