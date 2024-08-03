FROM php:8.1.0-fpm
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    nano \
    git \
    curl \
    wget \
    libzip-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libicu-dev \
    libpq-dev \
    libxpm-dev \
    libvpx-dev \
    libzip-dev \
    libxml2-dev \
    && docker-php-ext-install -j$(nproc) bcmath exif gd iconv intl opcache pcntl pdo_pgsql pgsql soap sockets zip \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql/

COPY ./php.ini /usr/local/etc/php/conf.d/php.ini
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY ./umask.sh /etc/profile.d/umask.sh