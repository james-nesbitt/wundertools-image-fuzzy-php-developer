# alpine-php-app-developer
A wundertools docker image for PHP-FPM service that is ready for Drupal, and is tuned for developers

## Base

This image is heavily based on the alpine-php image https://github.com/wunderkraut/alpine-php
This image also borrows config from https://github.com/wunderkraut/docker-container-app-configs/tree/master/php

## Additions

This image overrides only:

### /etc/php7/php-fpm.d/www.conf

This is a custom fpm configuration:

1. runs as app:app
2. listens as app:app
3. sets a run/nice mode (pm.ondemand)
4. rewires logging a bit
5. sets RAM a bit

But it adds:

### /etc/php7/conf.d/xdebug.ini

Some settings that are typically used by PHPStorm

### /etc/php7/conf.d/zz_wunderkraut.ini

more settings from Ilari

## TODO

1. Perhaps non-extension settings should be kept in www.conf
2. additional extensions for developers?
3. blackfire? (not yet easy to do with alpine linux)

Also:

1. set a default ENVIRONMENT and HOSTNAME variable
