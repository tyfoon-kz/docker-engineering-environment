# Mount Strategy

| Path or data | Strategy | Reason |
| --- | --- | --- |
| Project source code | Bind mount | Host edits are visible in `app` |
| MySQL data | Named volume `mysql_data` | Survives container recreation |
| Redis data | Named volume `redis_data` | Survives restarts in this training stack |
| PHP dependencies | Named volume `vendor_data` | Avoids mixing host and Linux dependency files |
| Laravel writable paths | Project folders | Easy to inspect during development |
