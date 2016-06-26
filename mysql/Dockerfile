FROM alulu/mysql_base
MAINTAINER zhouhu <zhouhu690109@163.com>

ENV MYSQL_DATABASE users

COPY ./database.sql /docker-entrypoint-initdb.d/
COPY ./run.sh /
RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
