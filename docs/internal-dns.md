# Internal DNS

Inside the Compose stack:
- `postgres` resolves as `postgres`;
- `redis` resolves as `redis`.

That is why the application contract still uses:
- `DB_HOST=postgres`
- `REDIS_HOST=redis`

The host-published app port is an external access detail, not an internal service-discovery mechanism.
