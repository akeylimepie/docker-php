ARG PHP_VERSION
ARG PHP_ENV
ARG PHP_MODE
FROM php:${PHP_VERSION}-${PHP_MODE}-alpine as build

RUN apk update && \
    apk upgrade --update-cache --available && \
    apk add --no-cache bash

ARG IPE_VERSION
RUN curl -sSLf -o /usr/local/bin/install-php-extensions \
            https://github.com/mlocati/docker-php-extension-installer/releases/download/${IPE_VERSION}/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions

ARG COMPOSER_VERSION
ARG AMQP_VERSION
ARG REDIS_VERSION
ARG RELAY_VERSION
RUN install-php-extensions \
        @composer-${COMPOSER_VERSION} \
        igbinary msgpack \
        amqp-${AMQP_VERSION} relay-${RELAY_VERSION} \
        intl xsl zip-stable apcu \
        pdo-stable pdo_mysql-stable

RUN mkdir /etc/periodic/1min \
    && echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root

WORKDIR /srv/app

FROM build as dev-env

RUN apk add --no-cache git

ARG XDEBUG_VERSION
RUN install-php-extensions xdebug-${XDEBUG_VERSION}

ARG PHPSTAN_VERSION
RUN cd /opt && composer require phpstan/phpstan:$PHPSTAN_VERSION

ENV PATH "$PATH:/opt/vendor/bin"

FROM build as prod-env

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

FROM dev-env as fpm-dev

COPY config/yy-xdebug.ini "$PHP_INI_DIR/conf.d/"

FROM prod-env as fpm-prod

COPY config/yy-prod.ini "$PHP_INI_DIR/conf.d/"

FROM fpm-${PHP_ENV} as fpm-mode

RUN install-php-extensions opcache

COPY config/yy-fpm.conf /usr/local/etc/php-fpm.d/
COPY config/yy-opcache.ini "$PHP_INI_DIR/conf.d/"

COPY fpm-healthcheck.sh /usr/local/bin/healthcheck
RUN apk add --no-cache fcgi && \
    chmod +x /usr/local/bin/healthcheck

HEALTHCHECK --interval=10s --timeout=3s --retries=3 --start-period=10s --start-interval=3s CMD ["healthcheck"]

FROM ${PHP_ENV}-env as console-mode

RUN apk add --no-cache supervisor

RUN install-php-extensions \
        pcntl ffi \
        sockets-stable ev-stable event-stable

FROM console-mode as cli-mode

FROM console-mode as zts-mode
