# Compose Topology

The stack is intentionally small and contains three roles:
- `app` for the application runtime;
- `postgres` for relational state;
- `redis` for fast transient state.

This is enough to teach that Compose describes the project as services with roles rather than as unrelated containers.
