# Network Map

- `web` is the host-facing network for services that may receive external traffic.
- `internal` is the private network for application-to-infrastructure communication.

Services:
- `app` joins both `web` and `internal`;
- `postgres` joins only `internal`;
- `redis` joins only `internal`.

This keeps infrastructure services private while still allowing the app to speak to both the host and the internal runtime.
