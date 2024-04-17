FROM mysql:8.0

RUN set -eux; \
    echo "mysql root password = your_password" > /etc/mysql/conf.d/root_password.cnf;

EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD your_password
ENV MYSQL_DATABASE your_database

CMD ["mysqld", "--user=mysql"]
