#!/bin/bash

echo "Esperando a que MariaDB se inicie..."
until mysqladmin ping --host=localhost --silent; do
  sleep 2
done

echo "MariaDB está disponible, creando base de datos y usuario..."
mysql -u root -p"$DB_ROOT_PASSWORD" <<EOF
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';
FLUSH PRIVILEGES;
EOF

echo "MariaDB configurado correctamente"
exec mysqld
