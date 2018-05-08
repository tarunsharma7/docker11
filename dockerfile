FROM centos:7
MAINTAINER ChandraShekhar
RUN yum install httpd -y
RUN yum install elinks -y
ADD index.html /var/www/html
ADD vhost.conf /etc/httpd/conf.d 
EXPOSE 80
EXPOSE 443
RUN rm -rf /run/httpd/* /tmp/httpd*
CMD /usr/sbin/apachectl -DFOREGROUND

