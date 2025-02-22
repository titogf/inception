FROM debian:latest

RUN mkdir -p /var/www/html && chown -R www-data:www-data /var/www/html

RUN mkdir -p tmp && chown -R www-data:www-data tmp

WORKDIR /var/www/html

RUN apt-get -y update && apt install -y php-fpm php-mysql curl

COPY ./tools/script.sh /script.sh
COPY ./conf/wp-config.php /wp-config.php

RUN chmod +x /script.sh

EXPOSE 9000

ENTRYPOINT ["sh", "/script.sh"]

CMD ["php-fpm7.3", "-F"]