FROM php:7.1-fpm-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

COPY ./ /var/www/symfony

WORKDIR /var/www/symfony

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer install

RUN apk update && apk add yarn && yarn install