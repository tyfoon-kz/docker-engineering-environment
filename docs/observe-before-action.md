# Observe Before Action

Do not start with blind restart. Start with evidence.

```text
observe -> identify -> act -> verify -> clean up
```

## Ladder

1. `docker ps -a` — is the container running or exited?
2. Identify name, image, status, and ports.
3. `docker logs <container>` — what did the process say?
4. `docker inspect <container>` — what config/state does Docker know?
5. `docker exec -it <container> sh` — only if the container is running and you need inside context.
6. Act: change config, stop, recreate, or fix the source of the problem.
7. Verify with `ps`, `logs`, browser, or `curl`.
8. Clean up stopped temporary containers.

Restart may be valid. Blind restart is the problem.

If a training script uses a host port that is already busy, change only the host side of the mapping. For example, use `8083:80` instead of `8081:80`.
