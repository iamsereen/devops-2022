FROM php:7.4-apache

RUN apt-get update
RUN apt-get install -y apache2

# Update and install dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    unzip \
    libzip-dev \
    libicu-dev \
    libpq-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev 
    
# Install PHP extensions
RUN docker-php-ext-install \
    zip \
    intl \
    pdo \
    pdo_mysql \
    curl \
    json \
    gd \
    xml \
    opcache

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer



# Install PHPUnit
RUN curl -sSL https://phar.phpunit.de/phpunit-9.phar -o /usr/local/bin/phpunit && \
    chmod +x /usr/local/bin/phpunit

RUN composer global require laravel/installer && \
    composer create-project --prefer-dist laravel/laravel /app

RUN apt-get install -y npm && \
    npm install && \
    npm install bootstrap vue


# Install Capistrano
RUN apt-get update && apt-get install -y ruby-full
RUN gem install capistrano

# Install Travis CI CLI
RUN gem install travis

# Set environment variables for MySQL
ENV MYSQL_DATABASE=my_database \
    MYSQL_USER=root \
    MYSQL_PASSWORD= \
    MYSQL_HOST=localhost \
    MYSQL_PORT=3306

# Copy Apache virtual host configuration
COPY apache2.conf /etc/apache2/apache2.conf

# Copy PHP configuration
COPY php.ini /usr/local/etc/php/

# Set working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80
