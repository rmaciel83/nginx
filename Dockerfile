FROM ubuntu

MAINTAINER Rodrigo Maciel <rmaciel83@gmail.com>

RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* && echo "\ndaemon off;" >> /etc/nginx/nginx.conf && chown -R www-data:www-data /var/lib/nginx

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

WORKDIR /etc/nginx

LABEL description="Webserver"

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
