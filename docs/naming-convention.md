# Naming Convention

The Compose project name is `ecommerce-platform`. Compose uses it when it creates resources such as networks.

Service names are short role names:

- `web` is the HTTP entry.
- `app` is the PHP runtime.
- `mysql` is the database hostname inside Compose.
- `redis` is the cache hostname inside Compose.

This reference does not set `container_name`. Compose can generate container names from the project and service names. That keeps scaling and recreation simpler.

Inside containers, use service names:

```text
DB_HOST=mysql
REDIS_HOST=redis
```

From the host, use the published port:

```text
http://localhost:8080
```
