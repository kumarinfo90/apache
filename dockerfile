
FROM centos:7

MAINTAINER kumar

RUN yum -y update && yum install -y httpd && yum clean all

COPY index.html /var/www/html

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh

RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]

