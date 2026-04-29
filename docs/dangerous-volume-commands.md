# Dangerous Volume Commands

Do not put these in check scripts:

```bash
docker compose down -v
docker volume prune
docker system prune
```

They can remove useful local data. A check script should inspect and report.
