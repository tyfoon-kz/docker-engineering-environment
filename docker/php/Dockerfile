FROM php:8.5-cli

RUN apt-get update \
    && apt-get install -y --no-install-recommends git unzip libzip-dev \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY composer.json composer.lock ./

RUN php -r "echo 'composer metadata placeholder for course build';"

COPY . .

CMD ["php", "-v"]
