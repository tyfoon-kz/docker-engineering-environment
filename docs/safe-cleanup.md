# Safe Cleanup

This playbook is intentionally inventory-first. It does not run destructive prune by default.

Recommended order:

1. Inspect what exists before deleting anything.
2. Decide whether the problem is build cache, unused images, stopped containers, or data-bearing volumes.
3. Write down what will be deleted and why.
4. Backup/export important volumes before deleting them.
5. Apply the narrowest cleanup command that solves the problem.

Example progression:

- run `bin/cleanup-inventory.sh`;
- clean builder cache if build layers are the issue;
- remove dangling or unused images if image storage is the issue;
- be very cautious around volumes;
- reserve broad `system prune` for rare, deliberate cases.

## Team-safe cleanup checklist

- I listed containers, images, volumes, networks, and builder cache.
- I know which category is consuming space.
- I know whether any volume contains database or uploaded file data.
- I have a backup/export path for important volumes.
- I chose the narrowest command.
- I did not use `docker system prune -a --volumes` as a default answer.

## Dry-run note

Docker does not provide perfect dry-run output for every delete command. In this branch, "dry-run" means inventory plus a written deletion plan before running a destructive command.

## Commands to discuss, not run blindly

```bash
docker builder prune
docker image prune
docker container prune
docker system prune
```

Before any command that can touch volumes, stop and confirm the backup plan.
