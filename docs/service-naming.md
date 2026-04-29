# Service Naming

Stable names create a shared language for people, docs and scripts.

## Services

- `app` is the application runtime.
- `nginx` is the local HTTP entry point.
- `postgres` is the relational database.
- `redis` is the cache or queue support service.

Avoid renaming standard services to novelty names. A command such as `docker compose logs postgres` should keep working across projects that use the same stack shape.

## Network

- `app-network` is the internal network used by local services.
- The explicit Docker network name is `ecommerce-platform-local`.

## Volumes

- `postgres-data` stores local PostgreSQL data.
- `redis-data` stores local Redis data.

Volume names describe the data they contain. They should not contain personal names, machine names or branch names.

