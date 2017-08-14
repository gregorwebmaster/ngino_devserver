# ngino_webserver
Docker configuration for LNPM server with Redis DB


## Requirements
* Docker [more about insstallation](https://docs.docker.com/engine/installation)
* [Docker compose](https://github.com/docker/compose)


## Containers
1. Nginx    - based on nginx:1.13.3-alpine
2. PHP      - based on php:7.1.8-fpm-alpine
3. MySQL    - official image mysql:5.7.19
4. PhpMyAdmin - official image phpmyadmin/phpmyadmin
5. Redis    - official image redis:4.0.1-alpine

## Used ports
1. Nginx    - 80,443,8080
2. phpMyAdmin - 8855

## Instalation
1. clone this repository
2. go into repository directory (default ngino_webserver)
3. run as root **"docker-compose up -d"**