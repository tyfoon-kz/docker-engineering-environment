# Cache vs Data

This branch is a reference answer for lesson 18. The goal is safe maintenance, not a total reset.

Important distinctions:

- containers
  - running or stopped service instances
  - may have useful logs even when stopped

- build cache
  - rebuildable
  - exists to speed up image builds

- images
  - may consume disk space
  - can often be re-pulled or rebuilt

- networks
  - connect containers
  - often recreated by Compose, but should still be listed before cleanup

- volumes
  - may hold real state
  - can contain databases, storage, or other useful local data

This is why volumes demand the highest level of caution.

## Build cache is not named volume data

Build cache helps Docker avoid repeating build steps. If removed, the next build is slower, but the project can usually recreate it.

A named volume can contain a local database, uploaded files, or queue state. If removed without backup, the data may be gone.

## Beginner rule

Cache affects speed. Volume data can affect correctness and recovery. Treat them differently.
