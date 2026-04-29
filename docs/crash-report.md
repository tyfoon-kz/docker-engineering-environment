# Crash Report

## Scope

Affected service:
- `broken-worker`

Healthy comparison service:
- `healthy-web`

## Observed behavior

Observed behavior:
- the container exits immediately;
- the logs show a missing configuration file;
- there is no point in using `docker exec` first because the main process is already gone.

## Evidence

Expected commands:

```bash
docker compose ps
docker compose logs --tail=50 broken-worker
docker inspect ecommerce-broken-worker
```

Expected log signal:

```text
[worker] missing configuration file /run/config/worker.env
```

## Root cause

Root cause:
- the worker is configured to fail explicitly when `/run/config/worker.env` is missing.

## First-line conclusion

First-line conclusion:
- this is a startup crash with a readable log trail, not a networking issue and not a readiness delay.

## What not to do

- Do not blindly restart the service before reading logs.
- Do not remove the container to make the red state disappear.
- Do not manually create `/run/config/worker.env` inside a live container as the "fix".

## Real fix direction

The reproducible fix would be a tracked config file, env value, or Compose mount. The reference branch keeps the failure visible because the homework is about diagnostics.
