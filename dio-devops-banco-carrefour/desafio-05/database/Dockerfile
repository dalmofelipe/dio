FROM mysql:latest
WORKDIR /var/lib/mysql
COPY ./sql/data.sql /docker-entrypoint-initdb.d/
COPY ./config /etc/mysql/conf.d
ENV MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_DATABASE=dioappdb
EXPOSE 3306