FROM mysql:8.0

# Set MySQL root password
RUN set -eux; \
    echo "mysql root password = your_password" > /etc/mysql/conf.d/root_password.cnf;

# Expose MySQL port 3306
EXPOSE 3306

# Set environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD your_password
ENV MYSQL_DATABASE your_database

# CMD to run MySQL server as non-root user
CMD ["mysqld", "--user=mysql"]
