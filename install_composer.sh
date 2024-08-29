#!/bin/sh

# Descargar e instalar Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Ejecutar composer install
composer install
