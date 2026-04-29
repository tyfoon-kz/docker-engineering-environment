# First Response

This branch is a reference answer for lesson 15. The goal is not to hide the broken container. The goal is to show a calm diagnostic order.

## Mental model

Diagnostics is a sequence of questions, not panic. A container failure usually gives evidence before it needs action. Read the evidence first.

## First-response ladder

1. Reproduce: `docker compose up -d`
2. State: `docker compose ps`
3. Logs: `docker compose logs --tail=50 broken-worker`
4. Config: check `docker-compose.yml`, command, env, volumes, and ports
5. Exec only if the container is alive and there is a specific question
6. Inspect: `docker inspect ecommerce-broken-worker`
7. Change code/config, then recreate the container

## Useful evidence commands

```bash
docker compose ps
docker compose logs --tail=50 broken-worker
docker compose logs -f healthy-web
docker inspect ecommerce-broken-worker
docker events --since 10m
docker top ecommerce-healthy-web
docker stats --no-stream
```

Why this order matters:
- it preserves the original failure context;
- it keeps logs as the first evidence source;
- it separates observation from repair;
- it stops debugging from turning into random shell sessions;
- it avoids blind restart, blind delete, and manual fixes inside a live container.

## Recreate after a real fix

If the source of truth changes, recreate from the source:

```bash
docker compose up -d --force-recreate broken-worker
```

Do not repair the container by editing files inside it. That change disappears on recreate and never reaches the repository.
