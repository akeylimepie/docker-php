# PHP + Xdebug

%%VERSION_BADGES%%

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/%%IMAGE%%/%%LATEST_VERSION%%-fpm?label=prod)](https://hub.docker.com/r/%%IMAGE%%)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/%%IMAGE%%/%%LATEST_VERSION%%-fpm-dev?label=dev)](https://hub.docker.com/r/%%IMAGE%%)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/pulls/%%IMAGE%%)](https://hub.docker.com/r/%%IMAGE%%)
[![build](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml/badge.svg?event=push)](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml)

arch: linux/amd64, linux/arm64

```
docker pull %%IMAGE%%:%%LATEST_VERSION%%-fpm
docker pull %%IMAGE%%:%%LATEST_VERSION%%-cli
```

|                                   | fpm-dev | fpm-prod | cli-dev | cli-prod |
|-----------------------------------|---------|----------|---------|----------|
| Composer `%%COMPOSER_VERSION%%`   | &check; | &check;  | &check; | &check;  |
| Xdebug `%%XDEBUG_VERSION%%`       | &check; |          | &check; |          |
| PHPStan `%%PHPSTAN_VERSION%%`     | &check; |          | &check; |          |
| APCu `%%APCU_VERSION%%`           | &check; | &check;  | &check; | &check;  |
| AMQP `%%AMQP_VERSION%%`           | &check; | &check;  | &check; | &check;  |
| Relay `%%RELAY_VERSION%%`         | &check; | &check;  | &check; | &check;  |
| Memcached `%%MEMCACHED_VERSION%%` | &check; | &check;  | &check; | &check;  |
| PDO, PDO MySQL                    | &check; | &check;  | &check; | &check;  |
| intl xsl zip igbinary msgpack ffi | &check; | &check;  | &check; | &check;  |
| pcntl, event, sockets             |         |          | &check; | &check;  |
| OPcache                           | &check; | &check;  |         |          |

## Supported tags

%%TAGS_TABLE%%
