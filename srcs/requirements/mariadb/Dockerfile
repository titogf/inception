FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

RUN mkdir -p /var/lib/mysql /var/log/mysql /var/run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql /var/log/mysql /var/run/mysqld && \
    chmod -R 755 /var/lib/mysql /var/log/mysql /var/run/mysqld

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./tools/script.sh /var/script.sh
RUN chmod +x /var/script.sh

EXPOSE 3306

ENTRYPOINT [ "sh", "/var/script.sh" ]
