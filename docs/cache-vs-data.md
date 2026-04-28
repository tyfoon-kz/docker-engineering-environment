# Cache vs Data

Important distinctions:

- build cache
  - rebuildable
  - exists to speed up image builds

- images
  - may consume disk space
  - can often be re-pulled or rebuilt

- volumes
  - may hold real state
  - can contain databases, storage, or other useful local data

This is why volumes demand the highest level of caution.
