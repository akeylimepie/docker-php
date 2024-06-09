# PHP + Xdebug

![](https://img.shields.io/badge/-8.3.8-informational) ![](https://img.shields.io/badge/-8.2.20-informational) ![](https://img.shields.io/badge/-8.1.29-informational) 

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.3-fpm?label=prod)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.3-fpm-dev?label=dev)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/pulls/akeylimepie/php)](https://hub.docker.com/r/akeylimepie/php)
[![build](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml/badge.svg?event=push)](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml)

arch: linux/amd64, linux/arm64

```
docker pull akeylimepie/php:8.3-fpm
docker pull akeylimepie/php:8.3-cli
```

|                                   | fpm-dev | fpm-prod | cli-dev | cli-prod |
|-----------------------------------|---------|----------|---------|----------|
| Composer `2.7.6`   | &check; | &check;  | &check; | &check;  |
| Xdebug `3.3.2`       | &check; |          | &check; |          |
| PHPStan `1.11.4`     | &check; |          | &check; |          |
| APCu `5.1.23`           | &check; | &check;  | &check; | &check;  |
| AMQP `2.1.2`           | &check; | &check;  | &check; | &check;  |
| Relay `0.8.0`         | &check; | &check;  | &check; | &check;  |
| PDO, PDO MySQL                    | &check; | &check;  | &check; | &check;  |
| intl xsl zip igbinary msgpack ffi | &check; | &check;  | &check; | &check;  |
| pcntl, event, sockets             |         |          | &check; | &check;  |
| OPcache                           | &check; | &check;  |         |          |

## Supported tags

| prod | dev |
| --- | --- |
| 8.3-fpm | 8.3-fpm-dev |
| 8.3-cli | 8.3-cli-dev |
| 8.2-fpm | 8.2-fpm-dev |
| 8.2-cli | 8.2-cli-dev |
| 8.1-fpm | 8.1-fpm-dev |
| 8.1-cli | 8.1-cli-dev |

