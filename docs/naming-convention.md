# Naming Convention

Service names are role names and internal hostnames:

- `web`
- `app`
- `mysql`
- `redis`

This reference does not set manual `container_name` values. Compose can generate container names from the project name and service name.

Use `mysql` and `redis` from inside containers. Use `localhost:${WEB_PUBLISHED_PORT}` from the host.
