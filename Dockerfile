# Utilize a imagem base do MySQL
FROM mysql:latest

# Copie arquivos de configuração personalizados para o container, se necessário
# Por exemplo:
# COPY my.cnf /etc/mysql/my.cnf

# Configure o ambiente com variáveis personalizadas
# Exemplo:
ENV MYSQL_ROOT_PASSWORD="admin"
ENV MYSQL_DATABASE="notas"
ENV MYSQL_USER="admin"
ENV MYSQL_PASSWORD="admin"

# Expõe a porta padrão do MySQL
EXPOSE 3306

# Define um comando de saúde para o MySQL, se necessário
# Exemplo:
HEALTHCHECK --interval=10s --timeout=20s --retries=10 CMD mysqladmin ping || exit 1

# O ponto de entrada padrão da imagem MySQL é usado
# Portanto, não precisamos redefinir o ENTRYPOINT ou CMD
