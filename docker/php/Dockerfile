FROM composer:2 AS builder

WORKDIR /app

COPY composer.json composer.lock ./

RUN composer install --no-dev --no-interaction --no-scripts

COPY . .

FROM php:8.5-cli AS runtime

WORKDIR /app

COPY --from=builder /app /app

CMD ["php", "-v"]
