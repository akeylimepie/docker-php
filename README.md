# PHP + Xdebug

![](https://img.shields.io/badge/-8.4.12-informational) ![](https://img.shields.io/badge/-8.3.25-informational) ![](https://img.shields.io/badge/-8.2.29-informational) 

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.4-fpm?label=prod)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.4-fpm-dev?label=dev)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/pulls/akeylimepie/php)](https://hub.docker.com/r/akeylimepie/php)
[![build](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml/badge.svg?event=push)](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml)

arch: linux/amd64, linux/arm64

```
docker pull akeylimepie/php:8.4-fpm
docker pull akeylimepie/php:8.4-cli
```

|                                                 | fpm-dev | fpm-prod | cli-dev | cli-prod |
|-------------------------------------------------|---------|----------|---------|----------|
| Composer `2.8.11`                 | &check; | &check;  | &check; | &check;  |
| Xdebug `3.4.5`                     | &check; |          | &check; |          |
| PHPStan `2.1.25`                   | &check; |          | &check; |          |
| APCu `5.1.27`                         | &check; | &check;  | &check; | &check;  |
| AMQP `2.1.2`                         | &check; | &check;  | &check; | &check;  |
| Relay `0.11.1`                       | &check; | &check;  | &check; | &check;  |
| Memcached `3.3.0`               | &check; | &check;  | &check; | &check;  |
| PDO, PDO MySQL                                  | &check; | &check;  | &check; | &check;  |
| intl, xsl, zip, igbinary, msgpack, ffi, sysvsem | &check; | &check;  | &check; | &check;  |
| pcntl, event, sockets                           |         |          | &check; | &check;  |
| OPcache                                         | &check; | &check;  |         |          |

## Supported tags

| prod | dev |
| --- | --- |
| 8.4-fpm | 8.4-fpm-dev |
| 8.4-cli | 8.4-cli-dev |
| 8.3-fpm | 8.3-fpm-dev |
| 8.3-cli | 8.3-cli-dev |
| 8.2-fpm | 8.2-fpm-dev |
| 8.2-cli | 8.2-cli-dev |

