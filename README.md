# wundertools-image-fuzzy-php-developer

A wundertools docker image for PHP-FPM service that is better tuned for web applications
and meant to be used in development scenarios, where a more lenient environment may be 
needed. and where error output can be allowed.

## Container

### Maintained

Maintained by: James Nesbitt <james.nesbitt@wunder.io>

### Image

This image is available publicly as:

- quay.io/wunder/wundertools-image-fuzzy-php-developer : [![Docker Repository on Quay](https://quay.io/repository/wunder/wundertools-image-fuzzy-php-developer/status "Docker Repository on Quay")](https://quay.io/repository/wunder/wundertools-image-fuzzy-php-developer)

## Base

This image is heavily based on the fuzzy-php image, and only adds some
PHP ini settings files.

## Additions

This image adds the following files:

### /etc/php7/conf.d/30_xdebug.ini



### /etc/php7/conf.d/zz_wunderdev.ini



## Development

- If you want to change the configuration of this image and build it locally for testing you can do that by running:
~~~
docker build --pull --no-cache -t quay.io/wunder/wundertools-image-fuzzy-php-developer .
~~~
