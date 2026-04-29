FROM php:8.3-fpm-alpine

WORKDIR /app

RUN apk add --no-cache postgresql-dev \
    && docker-php-ext-install pdo pdo_pgsql
