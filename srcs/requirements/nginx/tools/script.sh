openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/ssl.crt \
       -keyout /etc/nginx/ssl/ssl.key \
       -subj "/C=SP/ST=Madrid/L=Madrid/O=42 Madrid/OU=gfernand.42.fr/CN=gfernand.42.fr/"