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

## Directories
* config - for containers configurations files;
* data - as data storage directory;
* logs - directory to store logs files

## Used ports
1. Nginx    - 80,443,8080
2. phpMyAdmin - 8855

## MySQL login data
user root
pswd yourRootPassword

Remember to change default password after instalation

## Instalation
1. clone this repository
2. go into repository directory (default ngino_webserver)
3. run as root **"docker-compose up -d"**
4. call localhost:8080 in your broswer to look welcome page

## Configuration
### 1. Vhost for nginx
  * Vhost files for nginx are storet into *config/www/vhost*. You can use hello-word.conf as exemplary file. 
  * After create/change config file run as root **"docker restart nginowebserver_nginx_1"** to apply changes
### 2. Create Project
* put project files into *data/www*

## Join to NGINO WEBSERVER

If you have an idea, time and willingness to work, you are welcome :)


## License

The NGINO WEBSERVER is open-sourced software licensed under the MIT license.
