# Internal DNS

Compose service names work as DNS names inside a shared Docker network.

Examples from this stack:

- `app` connects to MySQL with `DB_HOST=mysql`.
- `app` connects to Redis with `REDIS_HOST=redis`.
- `web` proxies to `http://app:9000`.

These names are internal. A browser on the host does not open `http://web`; it opens the published port on `localhost`.
