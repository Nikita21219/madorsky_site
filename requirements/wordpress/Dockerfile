FROM alpine:3.17

ARG DB_NAME \
    DB_USER \
    DB_PASS \
    DB_HOST

RUN apk update && \
    apk upgrade && \
    apk add wget && \
    apk add unzip && \
    apk add php81 && \
    apk add php81-fpm && \
    apk add php81-mysqli && \
    apk add php81-xml && \
    apk add php81-curl && \
    apk add php81-fileinfo && \
    apk add php81-zip && \
    apk add php81-dom && \
    apk add php81-openssl && \
    apk add php81-json && \
    apk add php81-exif && \
    apk add php81-mbstring

COPY conf/www.conf /etc/php81/php-fpm.d/www.conf

RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    mkdir -p /var/www && \
    cp -fr wordpress/* /var/www

WORKDIR /var/www

COPY conf/wp-config.sh wp-config.sh

RUN sh wp-config.sh > wp-config.php; \
    chmod -R 777 wp-content;

CMD ["/usr/sbin/php-fpm81", "-F"]
