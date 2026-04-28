# Prune Risk Matrix

Low risk:
- inspect current usage
- identify build cache size

Medium risk:
- remove clearly unused build cache
- remove unused images that are easy to recreate

High risk:
- broad prune commands without checking what will be affected
- deleting volumes that may contain useful local state

Rule of thumb:
- if a cleanup action may touch volumes, stop and verify the cost first.
