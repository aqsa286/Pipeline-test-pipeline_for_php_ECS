# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install any needed packages specified in a requirements file
# RUN apt-get update && apt-get install -y package-name

# Make port 80 available to the world outside this container
EXPOSE 80

# Run apache server in the foreground
CMD ["apache2-foreground"]
