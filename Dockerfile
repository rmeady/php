FROM centos:7

RUN yum update -y
RUN yum -y install httpd mysql-server php php-mysql less vim

RUN mkdir -p /usr/local/lamp/bin

ADD start.sh /usr/local/lamp/bin

WORKDIR /usr/local/lamp

COPY config/php.ini /usr/local/etc/php
COPY src/ /var/www/html/
EXPOSE 80

CMD ["bin/start.sh"]
