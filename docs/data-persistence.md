# Data Persistence

Normal `docker compose down` removes containers and networks, but keeps named volumes.

Expected behavior:

| Action | MySQL data | Redis data | Source code |
| --- | --- | --- | --- |
| `docker compose restart` | kept | kept | kept on host |
| Recreate container | kept in named volume | kept in named volume | kept on host |
| `docker compose down` | kept | kept | kept on host |
| `docker compose down -v` | deleted | deleted | kept on host |

Named volumes are persistence, not backup. A backup is a separate exported copy that can be restored after the local Docker volume is lost.
