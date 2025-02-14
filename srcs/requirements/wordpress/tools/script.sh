#!/bin/bash

WORDPRESS_URL="https://wordpress.org/latest.tar.gz"
WORDPRESS_DIR="/var/www/html"
WP_CONFIG_SOURCE="/wp-config.php"

echo "Descargando WordPress..."
curl -sSL "$WORDPRESS_URL" -o /tmp/wordpress.tar.gz

echo "Descomprimiendo WordPress..."
tar -xzf /tmp/wordpress.tar.gz -C /tmp

echo "Copiando archivos de WordPress a $WORDPRESS_DIR..."
cp -r /tmp/wordpress/* "$WORDPRESS_DIR/"

echo "Limpiando archivos temporales..."
rm -rf /tmp/wordpress /tmp/wordpress.tar.gz

mkdir -p /var/www/html

echo "Copiando wp-config.php ..."
cp "$WP_CONFIG_SOURCE" "$WORDPRESS_DIR/wp-config.php"

echo "Ajustando permisos..."
chown -R www-data:www-data "$WORDPRESS_DIR"
chmod -R 755 "$WORDPRESS_DIR"

echo "¡WordPress instalado y configurado correctamente!"