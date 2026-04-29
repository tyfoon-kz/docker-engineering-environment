# Stage Separation

This reference solution separates preparation from runtime.

## Builder as kitchen

The `builder` stage is the kitchen. It receives Composer and dependency metadata, then prepares `vendor`.

```dockerfile
FROM php:8.5-cli-alpine AS builder
COPY --from=composer_binary /usr/bin/composer /usr/bin/composer
RUN composer install --no-dev --no-interaction --prefer-dist --no-progress --no-scripts
```

Composer is useful in this stage because it creates the dependency artifact.

## Runtime as ready container

The `runtime` stage is the ready container for work. It receives only the files needed to run the training application:

```dockerfile
FROM php:8.5-cli-alpine AS runtime
COPY --from=builder /app/vendor ./vendor
COPY --from=builder /app/public ./public
```

The runtime stage does not need Composer itself. It needs the result Composer produced.

## Difference from one huge Dockerfile

One huge Dockerfile would install tools and then leave them in the same final image. Multi-stage build keeps the tool-heavy preparation stage separate from the final runtime stage.
