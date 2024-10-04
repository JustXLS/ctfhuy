FROM php:7.4-apache

RUN docker-php-ext-install mysqli

RUN apt update

RUN apt install sudo -y


COPY src/ /var/www/html/
COPY sql/ /docker-entrypoint-initdb.d/

EXPOSE 80

