#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

WORDPRESS_URL="https://wordpress.org/latest.tar.gz"
WORDPRESS_DIR="/var/www/html"
WP_CONFIG_SOURCE="/wp-config.php"

if [ ! -f "$WORDPRESS_DIR/index.php" ]; then
    echo "${GREEN}Descargando WordPress...${NC}"
    curl -sSL "$WORDPRESS_URL" -o /tmp/wordpress.tar.gz

    echo "${GREEN}Descomprimiendo WordPress...${NC}"
    tar -xzf /tmp/wordpress.tar.gz -C /tmp

    echo "${GREEN}Copiando archivos de WordPress a $WORDPRESS_DIR...${NC}"
    cp -r /tmp/wordpress/* "$WORDPRESS_DIR/"

    echo "${GREEN}Limpiando archivos temporales...${NC}"
    rm -rf /tmp/wordpress /tmp/wordpress.tar.gz
    rm -rf "$WORDPRESS_DIR/wp-config-sample.php"

    mkdir -p /var/www/html

    echo "${GREEN}Copiando wp-config.php ...${NC}"
    cp "$WP_CONFIG_SOURCE" "$WORDPRESS_DIR/wp-config.php"

    echo "${GREEN}Ajustando permisos...${NC}"
    chown -R www-data:www-data "$WORDPRESS_DIR"
    chmod -R 755 "$WORDPRESS_DIR"

    echo "${GREEN}¡WordPress instalado y configurado correctamente!${NC}"
else
    echo "${RED}WordPress ya está instalado. No es necesario ejecutar el script nuevamente.${NC}"
fi

exec "$@"