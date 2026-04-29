# Readiness vs Start

This branch is a reference answer for lesson 16.

## Key distinction

- `started`: the process exists.
- `ready`: the service can perform its role in the stack.
- `live`: the service is alive and not stuck beyond recovery.

A service can be started but not ready. For example, a cache or database process may exist while it is still loading state. An app process may exist while it is still waiting for dependencies.

In this branch:
- `valkey` starts first;
- Valkey readiness is checked with `valkey-cli ping`;
- Compose waits for `valkey` to become `service_healthy`;
- `app` starts only after Valkey reports a useful health signal;
- `app` also has its own HTTP healthcheck.

## Beginner rule

Do not read `running` as `ready`. `running` is only the process state. Readiness needs a probe that checks the service role.

## Commands

```bash
docker compose ps
docker inspect ecommerce-health-valkey
docker inspect ecommerce-health-app
```
