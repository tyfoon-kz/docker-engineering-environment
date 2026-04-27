# Ports Policy

Published externally:
- `app` publishes `${APP_PORT}:8080` because the developer needs browser access from the host.

Not published:
- `postgres`
- `redis`

Reason:
- the application reaches them through internal Docker DNS;
- opening them on the host is unnecessary for the core workflow and adds noise.
