# Usa una imagen base de PHP
FROM php:8.0-cli

# Establece el directorio de trabajo
WORKDIR /app

# Copia todos los archivos de tu proyecto al contenedor
COPY . /app

# Instala las dependencias necesarias
RUN apt-get update && apt-get install -y \
    libzip-dev \
    && docker-php-ext-install zip

# Comando para iniciar el servidor PHP
CMD ["php", "-S", "0.0.0.0:10000", "-t", "login"]
