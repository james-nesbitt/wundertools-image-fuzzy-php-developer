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

### Base

This image is heavily based on the fuzzy-php image, and only adds some
PHP ini settings files.

### Modifications

This image adds the following files:

### /etc/php7/conf.d/30_xdebug.ini

1. enable php-xdebug extension
2. tune the extension to make it work with PHPSTORM

### /etc/php7/conf.d/95_wunderdev.ini

1. allow easy increasing of memory
2. make php show errors

## Using this Image

run this container as an independent service:

```
$/> docker run -d quay.io/wunder/wundertools-image-fuzzy-php-developer
```

map any needed services such as memcache and dbs, and mount any source code volumes to whatever path needed:

```
$/> docker run -d \
      -v "$(pwd):/app/web" \
      -l "my_running_db_container:db.app" \
      -l "my_running_redis_container:redis.app" \
      quay.io/wunder/wundertools-image-fuzzy-php-developer
```

## TODO

1. some kind of automated testing would be usefull.
