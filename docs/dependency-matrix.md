# Dependency Matrix

- `app` depends on `postgres` because it needs relational state.
- `app` depends on `redis` because it uses cache or transient runtime state.
- `postgres` and `redis` do not depend on `app`.

The point is not only startup order. The point is to make the application wait for infrastructure that is actually ready.
