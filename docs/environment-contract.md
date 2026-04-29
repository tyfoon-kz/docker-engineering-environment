# Environment Contract

`.env.example` is the local runtime contract.

| Variable | Used by | Meaning |
| --- | --- | --- |
| `COMPOSE_PROJECT_NAME` | Compose | Project resource prefix |
| `APP_ENV` | `app` | Application mode |
| `WEB_PUBLISHED_PORT` | `web` | Host port for browser access |
| `MYSQL_DATABASE` | `mysql`, `app` | Database name |
| `MYSQL_USER` | `mysql`, `app` | Application database user |
| `MYSQL_PASSWORD` | `mysql`, `app` | Application database password |
| `MYSQL_ROOT_PASSWORD` | `mysql` | Local MySQL root password |

If Compose uses a variable, the variable should appear here.
