<<<<<<< HEAD
FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum --disableplugin=subscription-manager -y install httpd \
  && yum --disableplugin=subscription-manager clean all

#ADD index.php /var/www/html

RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf \
#  && sed -i 's/listen.acl_users = apache,nginx/listen.acl_users =/' /etc/php-fpm.d/www.conf \
#  && mkdir /run/php-fpm \
#  && chgrp -R 0 /var/log/httpd /var/run/httpd /run/php-fpm \
#  && chmod -R g=u /var/log/httpd /var/run/httpd /run/php-fpm

  && chgrp -R 0 /var/log/httpd /var/run/httpd \
  && chmod -R g=u /var/log/httpd /var/run/httpd  
  
EXPOSE 8080
USER root
CMD httpd -D FOREGROUND
=======
# Install the base requirements for the app.
# This stage is to support development.
FROM python:alpine AS base
RUN mkdir /opt/surendra
WORKDIR /opt/surendra
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM httpd as webserver
USER root
RUN mkdir /opt/surendra
WORKDIR /opt/surendra
#COPY requirements.txt .
#RUN pip install -r requirements.txt
EXPOSE 8080
>>>>>>> 0271a907c3a1275dfb401c0a5f0aa190fad02bd7
