# Writable Paths

Laravel needs writable paths for runtime files.

| Path | Why it must be writable |
| --- | --- |
| `storage` | Parent directory for logs, cache, sessions, and uploads |
| `storage/logs` | Application log files |
| `storage/app/uploads` | Training upload location |
| `bootstrap/cache` | Generated Laravel cache files |

The safe check is:

```bash
./bin/check-writable-paths.sh
```

The script creates and removes a tiny temporary file in each directory. It does not run `chmod -R 777`, `chown -R`, `prune`, or cleanup commands.
