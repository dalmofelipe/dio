FROM php:7.2-apache
WORKDIR /var/www/html/
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY ./src .
EXPOSE 80