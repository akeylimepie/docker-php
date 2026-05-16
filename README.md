# PHP + Xdebug

![](https://img.shields.io/badge/-8.5.6-informational) ![](https://img.shields.io/badge/-8.4.21-informational) ![](https://img.shields.io/badge/-8.3.31-informational) ![](https://img.shields.io/badge/-8.2.31-informational) 

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.5-fpm?label=prod)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.5-fpm-dev?label=dev)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/pulls/akeylimepie/php)](https://hub.docker.com/r/akeylimepie/php)
[![build](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml/badge.svg?event=push)](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml)

arch: linux/amd64, linux/arm64

```
docker pull akeylimepie/php:8.5-fpm
docker pull akeylimepie/php:8.5-cli
```

|                                                 | fpm-dev | fpm-prod | cli-dev | cli-prod |
|-------------------------------------------------|---------|----------|---------|----------|
| Composer `2.9.8`                 | &check; | &check;  | &check; | &check;  |
| Xdebug `3.5.1`                     | &check; |          | &check; |          |
| PHPStan `2.1.54`                   | &check; |          | &check; |          |
| APCu `5.1.28`                         | &check; | &check;  | &check; | &check;  |
| AMQP `2.2.0`                         | &check; | &check;  | &check; | &check;  |
| Relay `0.22.0`                       | &check; | &check;  | &check; | &check;  |
| Memcached `3.4.0`               | &check; | &check;  | &check; | &check;  |
| PDO, PDO MySQL                                  | &check; | &check;  | &check; | &check;  |
| intl, xsl, zip, igbinary, msgpack, ffi, sysvsem | &check; | &check;  | &check; | &check;  |
| pcntl, event, sockets                           |         |          | &check; | &check;  |
| OPcache                                         | &check; | &check;  |         |          |

## Supported tags

| prod | dev |
| --- | --- |
| 8.5-fpm | 8.5-fpm-dev |
| 8.5-cli | 8.5-cli-dev |
| 8.4-fpm | 8.4-fpm-dev |
| 8.4-cli | 8.4-cli-dev |
| 8.3-fpm | 8.3-fpm-dev |
| 8.3-cli | 8.3-cli-dev |
| 8.2-fpm | 8.2-fpm-dev |
| 8.2-cli | 8.2-cli-dev |

