ARG PHP_VERSION
ARG PHP_VARIANT
ARG PHP_ENV
FROM php:${PHP_VERSION}-${PHP_VARIANT}-alpine3.20 AS base

ARG IPE_VERSION
ADD --chmod=0755 \
    https://github.com/mlocati/docker-php-extension-installer/releases/download/${IPE_VERSION}/install-php-extensions \
    /usr/local/bin/

ARG COMPOSER_VERSION
ARG APCU_VERSION
ARG AMQP_VERSION
ARG RELAY_VERSION
ARG MEMCACHED_VERSION

RUN install-php-extensions \
    @composer-${COMPOSER_VERSION} \
    intl xsl zip igbinary msgpack ffi sysvsem \
    apcu-${APCU_VERSION} amqp-${AMQP_VERSION} relay-${RELAY_VERSION} memcached-${MEMCACHED_VERSION} \
    pdo_mysql

WORKDIR /srv/app



FROM base AS base-dev

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
COPY --link config/xx-xdebug.ini "$PHP_INI_DIR/conf.d/"

ARG XDEBUG_VERSION
RUN install-php-extensions xdebug-${XDEBUG_VERSION}

ARG PHPSTAN_VERSION
RUN cd /opt && composer require phpstan/phpstan:$PHPSTAN_VERSION
ENV PATH "$PATH:/opt/vendor/bin"



FROM base AS base-prod

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"



FROM base-dev AS fpm-dev
COPY --link config/xx-opcache-dev.ini "$PHP_INI_DIR/conf.d/"

FROM base-prod AS fpm-prod
COPY --link config/xx-fpm.prod.ini "$PHP_INI_DIR/conf.d/"
COPY --link config/xx-opcache-prod.ini "$PHP_INI_DIR/conf.d/"



FROM fpm-${PHP_ENV} AS fpm

RUN install-php-extensions opcache

COPY --link config/xx-fpm.conf "$PHP_INI_DIR/../php-fpm.d/"
COPY --link config/xx-opcache.ini "$PHP_INI_DIR/conf.d/"

COPY --link fpm-healthcheck.sh /usr/local/bin/healthcheck
RUN apk add --no-cache fcgi && \
    chmod +x /usr/local/bin/healthcheck

HEALTHCHECK --interval=10s --timeout=3s --retries=3 --start-period=10s --start-interval=3s CMD ["healthcheck"]



FROM base-${PHP_ENV} AS cli

RUN apk add --no-cache supervisor

RUN install-php-extensions pcntl sockets event
