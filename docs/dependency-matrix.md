# Dependency Matrix

| Service | Depends on | Readiness signal |
| --- | --- | --- |
| `mysql` | none | `mysqladmin ping` |
| `redis` | none | `redis-cli ping` |
| `app` | `mysql`, `redis` | PHP dev server port is open |
| `web` | `app` | Nginx HTTP response |
