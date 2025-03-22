FROM debian:buster

RUN mkdir -p /var/www/html /run/php && chown -R www-data:www-data /var/www/html /run/php

RUN mkdir -p tmp && chown -R www-data:www-data tmp

WORKDIR /var/www/html

RUN apt-get -y update && apt install -y php-fpm php-mysql curl

COPY ./tools/script.sh /script.sh
COPY ./conf/wp-config.php /wp-config.php

RUN chmod +x /script.sh

RUN sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 9000|' /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

ENTRYPOINT ["sh", "/script.sh"]

CMD ["php-fpm7.3", "-F"]