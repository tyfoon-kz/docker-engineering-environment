# First Response

Recommended first-line order:

1. `docker compose ps`
2. `docker compose logs --tail=50 <service>`
3. Write a short hypothesis
4. Only then use `docker exec` if the container is alive and there is a concrete question to answer

Why this order matters:
- it preserves the original failure context;
- it keeps logs as the first evidence source;
- it stops debugging from turning into random shell sessions.
