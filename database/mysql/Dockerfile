FROM mysql
MAINTAINER zhouhu <zhouhu690109@163.com>
RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get -y install net-tools

ENV MYSQL_ROOT_PASSWORD 123456
ENV MYSQL_USER mysql
ENV MYSQL_PASSWORD 123456
#ENV MYSQL_DATABASE users

#COPY ./database.sql /docker-entrypoint-initdb.d/
COPY ./run.sh /
RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
