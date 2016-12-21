# DEVELOPER PHP IMAGE
#
# This images extends the base php image by enabled a few developer oriented
# extensions and increasing some of the PHP settings for memory etc.
#
# VERSION v7.0.14-1
#
FROM quay.io/wunder/fuzzy-alpine-php-fpm:v7.0.14
MAINTAINER james.nesbitt@wunder.io

RUN apk --update add php7-xdebug && \
    # Cleanup
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

####
# Override nginx configuration for Drupal site
#
# override xdebug settings
ADD etc/php7/conf.d/40_xdebug.ini /etc/php7/conf.d/40_xdebug.ini
# add some dev oriented PHP settings
ADD etc/php7/conf.d/95_wunderdev.ini /etc/php7/conf.d/95_wunderdev.ini
