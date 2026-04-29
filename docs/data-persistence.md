# Data Persistence

`docker compose down` keeps named volumes. `docker compose down -v` removes them.

In this stack, `down -v` can delete `mysql_data`, `redis_data`, and `vendor_data`. Use it only for a deliberate reset.

Named volumes are not backups. A backup is a separate copy that can be restored.
