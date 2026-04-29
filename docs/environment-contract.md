# Environment Contract

`.env.example` lists the variables required for local startup.

| Variable | Used by | Meaning |
| --- | --- | --- |
| `COMPOSE_PROJECT_NAME` | Compose | Prefix for project resources such as networks |
| `APP_ENV` | `app` | Application environment name |
| `WEB_PUBLISHED_PORT` | `web` | Host port for browser access |
| `MYSQL_DATABASE` | `mysql`, `app` | Database name |
| `MYSQL_USER` | `mysql`, `app` | Application database user |
| `MYSQL_PASSWORD` | `mysql`, `app` | Application database password |
| `MYSQL_ROOT_PASSWORD` | `mysql` | Local root password for MySQL |

The values are examples for a local training environment. They are not production secrets.

Run this check before starting the stack:

```bash
./bin/compose-config-check.sh
```
