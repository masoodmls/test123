FROM registry.suse.com/suse/sle15 
MAINTAINER Masood Ahmed

RUN zypper refs && zypper refresh 
RUN zypper --non-interactive in apache2 

RUN echo "The Web server is running" > /srv/www/htdocs/index.html 

EXPOSE 82

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
