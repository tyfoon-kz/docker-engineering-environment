# Observe Before Action

## Diagnostic order

1. Check whether the container is running with `docker ps`.
2. If it is missing, inspect exited containers with `docker ps -a`.
3. Read logs with `docker logs <name>` before restarting anything.
4. If the container is alive, inspect the runtime context with `docker exec`.
5. Only after observation, decide whether stop/recreate/remove is justified.

## Why this order matters

Blind restarts often hide the original failure signal.
Observation preserves evidence.
