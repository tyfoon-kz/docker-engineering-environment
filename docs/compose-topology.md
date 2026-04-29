# Compose Topology

The stack is a readable map of `ecommerce-platform`.

| Service | Role | Talks to |
| --- | --- | --- |
| `web` | Nginx HTTP entry from the host | `app` |
| `app` | PHP application runtime | `mysql`, `redis` |
| `mysql` | Main relational database | internal clients only |
| `redis` | Cache or queue backend | internal clients only |

Inside Compose, `app` reaches the database with `DB_HOST=mysql`. From the host, the browser uses `http://localhost:${WEB_PUBLISHED_PORT}`.
