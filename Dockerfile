FROM php:7.2.1-apache

# maintainer info
MAINTAINER "Mirza Oglecevac oglecevacmirza@gmail.com"

WORKDIR /var/www/html

COPY . .

# restart apache
RUN service apache2 restart

# expose port 80 of the container
EXPOSE 80

# start apache in foreground
CMD apachectl -D FOREGROUND

# STEPS
# docker build -t responder:v1 .
# docker run -d --name responder --network api responder:v1