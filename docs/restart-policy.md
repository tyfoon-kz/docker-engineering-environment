# Restart Policy

`restart: unless-stopped` appears on both services as a resilience policy for long-lived containers.

What it does:
- it helps the stack recover from temporary runtime exits.

What it does not do:
- it does not fix a wrong configuration;
- it does not replace healthchecks;
- it does not prove readiness by itself.

## Safety net, not cure

Restart policy is a safety net. If a process exits once because of a temporary problem, Docker can start it again. If the same bad config makes it fail every time, restart only creates a crash loop.

## Crash loop signal

Look for:

```bash
docker compose ps
docker compose logs --tail=50 app
docker inspect ecommerce-health-app
```

If the same error appears again and again, the restart policy is repeating the failure. Fix the source of truth: code, env, config, Dockerfile, or Compose.

## Flapping signal

Flapping means health moves between `healthy` and `unhealthy`. That usually means the service sometimes answers and sometimes cannot. The next step is to inspect health logs and resource pressure, not to remove the healthcheck.
