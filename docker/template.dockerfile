ARG PHP_VERSION
ARG PHP_VARIANT
ARG PHP_ENV
FROM php:${PHP_VERSION}-${PHP_VARIANT}-alpine3.20 as base

ARG IPE_VERSION
ADD --chmod=0755 \
    https://github.com/mlocati/docker-php-extension-installer/releases/download/${IPE_VERSION}/install-php-extensions \
    /usr/local/bin/

ARG COMPOSER_VERSION
ARG APCU_VERSION
ARG AMQP_VERSION
ARG RELAY_VERSION

RUN install-php-extensions \
    @composer-${COMPOSER_VERSION} \
    intl xsl zip igbinary msgpack ffi \
    apcu-${APCU_VERSION} amqp-${AMQP_VERSION} relay-${RELAY_VERSION} \
    pdo_mysql-stable



FROM base as base-dev

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
COPY --link config/xx-xdebug.ini "$PHP_INI_DIR/conf.d/"

ARG XDEBUG_VERSION
RUN install-php-extensions xdebug-${XDEBUG_VERSION}

ARG PHPSTAN_VERSION
RUN cd /opt && composer require phpstan/phpstan:$PHPSTAN_VERSION
ENV PATH "$PATH:/opt/vendor/bin"



FROM base as base-prod

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"



FROM base-dev as fpm-dev
COPY --link config/xx-opcache-dev.ini "$PHP_INI_DIR/conf.d/"

FROM base-prod as fpm-prod
COPY --link config/xx-fpm.prod.ini "$PHP_INI_DIR/conf.d/"
COPY --link config/xx-opcache-prod.ini "$PHP_INI_DIR/conf.d/"


FROM fpm-${PHP_ENV} as fpm

RUN install-php-extensions opcache

COPY --link config/xx-fpm.conf "$PHP_INI_DIR/../php-fpm.d/"
COPY --link config/xx-opcache.ini "$PHP_INI_DIR/conf.d/"

COPY --link fpm-healthcheck.sh /usr/local/bin/healthcheck
RUN apk add --no-cache fcgi && \
    chmod +x /usr/local/bin/healthcheck

HEALTHCHECK --interval=10s --timeout=3s --retries=3 --start-period=10s --start-interval=3s CMD ["healthcheck"]



FROM base-${PHP_ENV} as cli

RUN apk add --no-cache supervisor

RUN install-php-extensions pcntl sockets event
