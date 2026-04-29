# Lifecycle End Discipline

Containers are disposable runtime instances. If a temporary container is no longer needed, stopping and removing it is normal discipline.

```bash
docker stop my-container
docker rm my-container
```

This is different from deleting data.

- Removing a stopped container removes that runtime instance.
- Removing a volume can remove persistent data.
- Running broad prune commands without understanding context can destroy useful debugging evidence or data.

Rule for beginners: clean up containers deliberately, but do not delete volumes blindly.
