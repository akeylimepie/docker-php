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
docker pull %%IMAGE%%:%%LATEST_VERSION%%-zts
```

| fpm, cli, zts                   | prod    | dev     |
|---------------------------------|---------|---------|
| Composer `%%COMPOSER_VERSION%%` | &check; | &check; |
| Xdebug `%%XDEBUG_VERSION%%`     |         | &check; |
| PHPStan `%%PHPSTAN_VERSION%%`   |         | &check; |
| AMQP `%%AMQP_VERSION%%`         | &check; | &check; |
| Redis `%%REDIS_VERSION%%`       | &check; | &check; |
| PDO, PDO MySQL                  | &check; | &check; |
| zip, pcntl, event, ev, ffi      | &check; | &check; |
| OPcache, APCu                   | &check; | &check; |

## Supported tags

%%TAGS_TABLE%%
