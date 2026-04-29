# Dependency Matrix

Startup order is not readiness. This stack uses healthchecks for dependencies that need time before they can accept real work.

| Service | Depends on | Readiness signal |
| --- | --- | --- |
| `mysql` | none | `mysqladmin ping` succeeds |
| `redis` | none | `redis-cli ping` returns `PONG` |
| `app` | `mysql`, `redis` | TCP connection to its PHP dev server succeeds |
| `web` | `app` | HTTP request to Nginx succeeds |

`app` waits for `mysql` and `redis` with `condition: service_healthy`. This helps local startup, but the application should still handle temporary connection failures.
