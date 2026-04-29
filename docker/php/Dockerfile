FROM php:8.5-cli-alpine

ARG BUILD_MODE=production
ARG APP_VERSION=lesson-06-reference

LABEL org.opencontainers.image.title="ecommerce-platform"
LABEL org.opencontainers.image.version="${APP_VERSION}"
LABEL kz.tyfoon.course.build_mode="${BUILD_MODE}"

ENV APP_DIR=/var/www/html

WORKDIR ${APP_DIR}

COPY public ./public

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
