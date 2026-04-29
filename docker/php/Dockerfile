FROM php:8.5-cli-alpine

WORKDIR /var/www/html

COPY composer.json composer.lock ./

RUN php -v \
    && php -r "echo 'Dependency metadata is copied before application files for cache stability.'.PHP_EOL;"

COPY public ./public

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
