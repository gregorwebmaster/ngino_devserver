FROM alpine:3.7

RUN apk update && apk upgrade

# install nginx server
RUN apk add nginx

#install PHP
RUN apk add php7 php7-fpm

# Install modules
RUN apk add php7-common php7-opcache php7-openssl php7-session php7-sockets php7-xdebug php7-curl php7-json php7-xml php7-simplexml php7-pdo php7-pdo_mysql php7-pdo_sqlite php7-pear php7-phar php7-gd php7-iconv php7-zlib php7-mbstring php7-tokenizer php7-mcrypt php7-ctype php7-openssl php7-redis php7-zip

#copy config
COPY config/nginx/nginx.conf /etc/nginx/nginx.conf
COPY config/nginx/default.conf /etc/nginx/vhosts/default.conf

COPY config/php7.1/php.ini /etc/php7/conf.d/50-setting.ini
COPY config/php7.1/php-fpm.conf /etc/php7/php-fpm.conf

# Create default site
RUN rm -rf /var/www/*
COPY www /var/www
# cleare installation
RUN rm -rf /var/cache/apk/*

EXPOSE 80 443

STOPSIGNAL SIGTERM

CMD php-fpm7 && nginx -g "daemon off;"
