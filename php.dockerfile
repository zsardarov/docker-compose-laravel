FROM php:8.0.0-fpm-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

# Create a new user with group,uid '1000'
RUN addgroup -g 1000 laradocker && adduser -G laradocker -g laradocker -s /bin/sh -D laradocker

RUN chown laradocker:laradocker /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# Change current user to laradocker
USER laradocker