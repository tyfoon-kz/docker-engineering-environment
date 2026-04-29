FROM composer:2 AS composer_binary

FROM php:8.5-cli-alpine AS builder

COPY --from=composer_binary /usr/bin/composer /usr/bin/composer

WORKDIR /app

COPY composer.json composer.lock ./

RUN composer install \
    --no-dev \
    --no-interaction \
    --prefer-dist \
    --no-progress \
    --no-scripts

COPY public ./public

FROM php:8.5-cli-alpine AS runtime

WORKDIR /var/www/html

COPY --from=builder /app/vendor ./vendor
COPY --from=builder /app/public ./public
COPY --from=builder /app/composer.json ./composer.json
COPY --from=builder /app/composer.lock ./composer.lock

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
