# DEVELOPER PHP IMAGE
#
# This images extends the base php image by enabled a few developer oriented
# extensions and increasing some of the PHP settings for memory etc.
#
# VERSION v7.1.5-0
#
FROM quay.io/wunder/fuzzy-alpine-php-fpm:v7.1.5-0-pre2
MAINTAINER james.nesbitt@wunder.io

RUN apk --no-cache --update add php7-xdebug && \
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
