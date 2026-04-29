# First Response Checklist

When someone says "the container does not work," ask:

- What is the container name?
- What image started it?
- Is it running or exited?
- What does `docker logs <container>` say?
- Which port should be reachable?
- Was this a short-lived job like `hello-world` or a long-running server like `nginx`?
- Is there persistent data in a volume or bind mount?
- What change happened immediately before the problem?

Only after these checks choose an action: restart, recreate, change config, or clean up.
