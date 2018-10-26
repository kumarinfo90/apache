FROM centos:latest

MAINTAINER kumar

RUN yum -y update && yum install -y httpd && yum clean all

COPY index.html /var/www/html/

CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]

EXPOSE 80
