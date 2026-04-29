# Prune Risk Matrix

## Low risk: inventory only

- `docker system df`
- `docker ps -a`
- `docker image ls`
- `docker volume ls`
- `docker network ls`
- `docker builder du`

These commands only list information.

## Medium risk: targeted cleanup

- remove one stopped container after checking it is no longer needed;
- remove dangling images that are easy to rebuild;
- prune builder cache after confirming it is only cache.

## High risk: broad cleanup

- broad prune commands without checking what will be affected;
- `docker system prune -a`;
- deleting volumes that may contain useful local state.

## Very high risk: destructive volume cleanup

- `docker system prune -a --volumes`;
- `docker volume rm <name>` when the volume purpose is unknown;
- deleting a database volume without dump/export.

Rule of thumb:
- if a cleanup action may touch volumes, stop and verify the cost first;
- if the volume may contain important data, create a backup/export first;
- broad prune commands require explicit team agreement.

## Example volume backup idea

For a database volume, prefer a database dump using the database tool. For file storage, prefer an archive of the files. The exact command depends on the service.

The reference branch does not run destructive cleanup by default.
