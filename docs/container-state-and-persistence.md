# Container State and Persistence

Containers have a writable layer, but it is not a safe home for important data.

```text
container writable layer -> temporary runtime changes
volume                  -> Docker-managed persistent data
bind mount              -> host file/folder visible inside container
```

If a container is removed, internal changes disappear with it. That is acceptable for disposable runtime state, but not for database files, uploaded files, or source code.

Use a volume or bind mount when data must survive container recreation.
