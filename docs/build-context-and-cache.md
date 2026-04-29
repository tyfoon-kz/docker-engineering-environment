# Build Context and Cache

## Build context

The final dot in this command selects the build context:

```bash
docker build -t ecommerce-php:lesson04 -f docker/php/Dockerfile .
```

Docker does not see the whole computer. It receives the files from the selected folder, after `.dockerignore` rules are applied.

## `.dockerignore`

This repository excludes `.git`, `.env`, `vendor`, `node_modules`, logs, IDE files, and temporary clutter from the build context.

That matters for three reasons:

- the context is smaller;
- local secrets are less likely to be copied into the image by accident;
- Docker rebuilds are easier to understand.

## Layer and cache order

The Dockerfile copies `composer.json` and `composer.lock` before application files:

```dockerfile
COPY composer.json composer.lock ./
RUN php -v
COPY public ./public
```

Dependency metadata changes less often than application files. Keeping it earlier lets Docker reuse earlier layers when only source files change.

## Common mistakes avoided here

- The Dockerfile path is explicit: `-f docker/php/Dockerfile`.
- `COPY` reads only files that exist in the build context.
- `CMD` starts a foreground PHP process instead of exiting immediately.
- `.env` is excluded from the build context.
