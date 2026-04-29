# Dependency Matrix

| Service | Depends on | Readiness signal |
| --- | --- | --- |
| `mysql` | none | `mysqladmin ping` succeeds |
| `redis` | none | `redis-cli ping` returns `PONG` |
| `app` | `mysql`, `redis` | PHP dev server accepts a local TCP connection |
| `web` | `app` | Nginx responds to local HTTP |

Startup order is not readiness, so dependencies use health status where useful.
