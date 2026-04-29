# Mount Strategy

| Path or data | Strategy | Reason |
| --- | --- | --- |
| Project source code | Bind mount `./:/var/www/html` in `app` | Edits on the host are visible immediately |
| Nginx public files | Read-only bind mount `./public:/var/www/html/public:ro` | Nginx only needs to read public files |
| Nginx config | Read-only bind mount | Config is project-controlled and should not be changed by the container |
| MySQL data | Named volume `mysql_data` | Database state must survive container recreation |
| Redis data | Named volume `redis_data` | AOF is enabled so Redis state can survive restarts in this training stack |
| PHP dependencies | Named volume `vendor_data` | Avoid mixing host OS dependency files with Linux container files |
| Uploads/logs | Project folders such as `storage/app/uploads` and `storage/logs` | Easy to inspect in development; must be included in the writable-paths strategy in lesson 11 |

No mount is added "just in case". Each mount has a job.
