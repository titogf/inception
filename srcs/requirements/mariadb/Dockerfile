FROM debian:latest

WORKDIR /var

RUN apt-get update && apt-get install -y mariadb-server #-y acepta todo sin preguntar

RUN mkdir -p /var/lib/mysql /var/log/mysql /var/run/mysqld /etc/mysql
RUN chmod 755 /var/lib/mysql /var/log/mysql /var/run/mysqld /etc/mysql

COPY ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306