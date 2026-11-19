FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy all website files
COPY . /var/www/html/

# Expose default HTTP port
EXPOSE 80

CMD ["apache2-foreground"]
