# Safe Cleanup

Recommended order:

1. Inspect what exists before deleting anything.
2. Decide whether the problem is build cache, unused images, stopped containers, or data-bearing volumes.
3. Apply the narrowest cleanup command that solves the problem.

Example progression:

- inspect first
- clean builder cache if build layers are the issue
- remove dangling or unused images if image storage is the issue
- be very cautious around volumes
- reserve broad `system prune` for rare, deliberate cases
