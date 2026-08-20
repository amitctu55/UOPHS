FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev \
    default-mysql-client \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
    && a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy application files
COPY . .

# Set permissions for cache and logs directories
RUN chown -R www-data:www-data \
    application/cache \
    application/logs \
    temp2 \
    application/views_12jandemo/application/cache \
    application/views_12jandemo/application/logs

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]