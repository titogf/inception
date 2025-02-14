FROM debian:latest

WORKDIR /var

RUN apt-get update && apt-get install -y mariadb-server #-y acepta todo sin preguntar

RUN mkdir -p /var/lib/mysql /var/log/mysql /var/run/mysqld /etc/mysql
RUN chown -R mysql:mysql /var/lib/mysql /var/log/mysql /var/run/mysqld /etc/mysql

COPY ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld", "--user=root", "--console"]