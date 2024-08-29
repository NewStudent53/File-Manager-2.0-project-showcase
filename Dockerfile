FROM php:8.0-apache

RUN apt-get update && apt-get install -y \
    libzip-dev \
    php-mysql \
    && docker-php-ext-install zip mysqli

COPY . /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
