FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libcurl3-dev \
    && docker-php-ext-install mcrypt curl mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN a2enmod rewrite

COPY config/php.ini /usr/local/etc/php/
# COPY config/conf.d/* /usr/local/etc/php/conf.d/

RUN mkdir -p \
    /var/www/html/winkel/image \
    /var/www/html/winkel/vqmod/logs \
    /var/www/html/winkel/vqmod/vqcache

COPY ./code/ .

VOLUME /var/www/html/winkel/image \
    /var/www/html/winkel/cache \
    /var/www/html/winkel/logs \
    /var/www/html/winkel/vqmod/logs

ENV DB_HOSTNAME=mysql \
    DB_USERNAME=shop \
    DB_PASSWORD=shop \
    DB_NAME=shop \
    DB_PREFIX=oc_ \
    SELF_ADDRESS=http://localhost
