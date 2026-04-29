# Compose Topology

This reference stack is a small map of `ecommerce-platform`.

| Service | Role | Talks to |
| --- | --- | --- |
| `web` | Nginx HTTP entry from the host | `app` |
| `app` | PHP application runtime | `mysql`, `redis` |
| `mysql` | Main relational database | internal clients only |
| `redis` | Cache or queue backend | internal clients only |

The important beginner rule is simple: services inside Compose use service names. The app connects to the database with `DB_HOST=mysql`, not with `localhost`.

The host uses the published web port. With `WEB_PUBLISHED_PORT=8080`, the browser opens `http://localhost:8080`.
