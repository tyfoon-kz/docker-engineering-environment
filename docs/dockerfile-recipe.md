# Dockerfile Recipe

This Dockerfile is a small runtime recipe for the training `ecommerce-platform` project.

## Build and image

`docker build` assembles an image from the Dockerfile. The image is the finished box. A container is created later from that image.

Build command:

```bash
docker build -t ecommerce-php:lesson04 -f docker/php/Dockerfile .
```

## Instructions

`FROM php:8.5-cli-alpine` chooses the base image.

`WORKDIR /var/www/html` sets the working folder inside the image.

`COPY composer.json composer.lock ./` copies dependency metadata first. These files change less often than application code.

`RUN php -v ...` runs during image build. In this reference solution it proves that PHP is available and leaves a simple build-time message.

`COPY public ./public` copies the tiny application entry point after the dependency metadata step.

`CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]` defines the default runtime process for a training container. It is not executed during image build.

## Why this is not container repair

The image is not prepared by entering a running container with `docker exec` and installing things by hand. The environment recipe is stored in Git, so another developer can review it and build the same image.
