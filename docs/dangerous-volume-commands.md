# Dangerous Volume Commands

Use this for normal stop:

```bash
docker compose down
```

Be careful with this:

```bash
docker compose down -v
```

The `-v` flag removes named volumes for the project. In this stack that can delete MySQL and Redis data.

Do not put `down -v`, `docker volume prune`, or `docker system prune` in homework check scripts. A check script should inspect and report, not destroy data.
