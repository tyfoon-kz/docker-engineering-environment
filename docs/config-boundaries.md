# Configuration Boundaries

## What can be baked into the image

Safe image defaults can be stored in the Dockerfile:

- internal application directory;
- non-secret labels;
- build mode labels for learning;
- default command.

Example:

```dockerfile
ENV APP_DIR=/var/www/html
CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
```

## What should stay outside the image

Runtime values should be provided when the container starts:

- `APP_ENV`;
- `DB_HOST`;
- `REDIS_HOST`;
- service ports;
- credentials and tokens.

Compose is the runtime layer in this reference:

```yaml
environment:
  APP_ENV: local
  DB_HOST: mysql
  REDIS_HOST: redis
```

## Why this boundary matters

The same image should be usable in more than one environment. If `DB_HOST` or a password is baked into the image, the image becomes tied to one run scenario and becomes harder to review safely.
