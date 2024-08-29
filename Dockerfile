# Usa una imagen base de PHP con Composer preinstalado
FROM php:8.1-apache

# Instala las extensiones necesarias
RUN docker-php-ext-install mysqli

# Copia los archivos de tu proyecto al contenedor
COPY . /var/www/html/

# Establece el directorio de trabajo
WORKDIR /var/www/html/login

# Instala Composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# Ejecuta composer install
RUN composer install

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2-foreground"]
