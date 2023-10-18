# PHP + Xdebug

![](https://img.shields.io/badge/-8.2.11-informational) ![](https://img.shields.io/badge/-8.1.24-informational) ![](https://img.shields.io/badge/-8.0.30-informational) 

[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.2-zts?label=w%2Fo%20graphic%20libs)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/akeylimepie/php/8.2-graphic-zts?label=w%2F%20graphic%20libs)](https://hub.docker.com/r/akeylimepie/php)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/pulls/akeylimepie/php)](https://hub.docker.com/r/akeylimepie/php)
[![build](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml/badge.svg?event=push)](https://github.com/akeylimepie/docker-php/actions/workflows/build.yml)

arch: linux/amd64, linux/arm64

```
docker pull akeylimepie/php:8.2-fpm
docker pull akeylimepie/php:8.2-cli
docker pull akeylimepie/php:8.2-zts
```

|                                 | prod    | dev     |
|---------------------------------|---------|---------|
| Composer `2.6.5` | &check; | &check; |
| Xdebug `3.2.2`     |         | &check; |
| PHPStan `1.10.39`   |         | &check; |
| Redis `6.0.1`       | &check; | &check; |
| PDO, PDO PostgreSQL             | &check; | &check; |
| zip, pcntl, event, ev, ffi      | &check; | &check; |
| OPcache, APCu                   | &check; | &check; |

Containers with graphic libs include:

* ImageMagick
* GD
* cwebp, dwebp
* cavif
* jpegoptim
* pngquant

## Supported tags

| prod | dev |
| --- | --- |
| 8.2-zts | 8.2-zts-dev |
| 8.2-fpm | 8.2-fpm-dev |
| 8.2-cli | 8.2-cli-dev |
| 8.1-zts | 8.1-zts-dev |
| 8.1-fpm | 8.1-fpm-dev |
| 8.1-cli | 8.1-cli-dev |
| 8.0-zts | 8.0-zts-dev |
| 8.0-fpm | 8.0-fpm-dev |
| 8.0-cli | 8.0-cli-dev |


| prod | dev |
| --- | --- |
| 8.2-graphic-zts | 8.2-graphic-zts-dev |
| 8.2-graphic-fpm | 8.2-graphic-fpm-dev |
| 8.2-graphic-cli | 8.2-graphic-cli-dev |
| 8.1-graphic-zts | 8.1-graphic-zts-dev |
| 8.1-graphic-fpm | 8.1-graphic-fpm-dev |
| 8.1-graphic-cli | 8.1-graphic-cli-dev |
| 8.0-graphic-zts | 8.0-graphic-zts-dev |
| 8.0-graphic-fpm | 8.0-graphic-fpm-dev |
| 8.0-graphic-cli | 8.0-graphic-cli-dev |

