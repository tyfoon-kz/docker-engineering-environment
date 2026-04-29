# Restart Policy

Long-running development services use `restart: unless-stopped`:

- `app`
- `web`
- `mysql`
- `redis`

This makes the local stack recover from accidental process exits while Docker is running.

Restart policy is not a bug fix. If `DB_PASSWORD` is wrong, restarting `app` will not make the password correct. Use logs and health status to find the cause.

One-shot tasks, such as future migrations or import jobs, should not automatically use `unless-stopped`.
