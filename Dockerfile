FROM php:7.4.13-apache

COPY src/ /var/www/html

EXPOSE 80