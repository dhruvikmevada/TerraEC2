#!/bin/bash

# Update package lists
apt-get update

# Install Apache2
apt-get install -y apache2

# Start Apache2 service
systemctl start apache2

# Enable Apache2 to start on boot
systemctl enable apache2

# Create a basic index.html file
echo "<html><body><h1>Hello from Apache2!</h1></body></html>" > /var/www/html/index.html

# Set proper permissions
chown -R www-data:www-data /var/www/html

# Print status
systemctl status apache2