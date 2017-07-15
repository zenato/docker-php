FROM php:5.6-apache

RUN apt-get update && apt-get install -y libpq-dev && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install pdo pdo_pgsql pgsql pdo_mysql mysqli
