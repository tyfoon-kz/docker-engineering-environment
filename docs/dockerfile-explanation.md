# Dockerfile Explanation

## `FROM`

Defines the base runtime image for `ecommerce-platform`.

## `RUN`

Installs only the system packages and PHP extensions required for the course example.

## `WORKDIR`

Makes `/app` the canonical working directory inside the image.

## `COPY`

Copies dependency metadata first so build steps can later benefit from cache stability.
The rest of the project is copied after that.

## `CMD`

Provides a default runtime command so the image can start with a predictable foreground process.
