# ARG vs ENV

## Simple model

Build-time is the factory. Runtime is the day the finished item is used.

In Docker:

- `ARG` belongs to image build;
- `ENV` becomes part of the image/container environment;
- Compose and `docker run -e` provide runtime values for a specific run.

## ARG in this reference

The Dockerfile uses:

```dockerfile
ARG BUILD_MODE=production
ARG APP_VERSION=lesson-06-reference
```

These values describe the build. They are not secrets.

Build command example:

```bash
docker build --build-arg BUILD_MODE=local -t ecommerce-php:config -f docker/php/Dockerfile .
```

## ENV in this reference

The Dockerfile uses:

```dockerfile
ENV APP_DIR=/var/www/html
```

`APP_DIR` is safe to bake into the image because it describes an internal path, not an environment-specific credential.

## Runtime values

`APP_ENV`, `DB_HOST`, and `REDIS_HOST` are provided through Compose because they can change between local, CI, and production-like environments.
