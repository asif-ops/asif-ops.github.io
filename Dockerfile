FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD . /var/www/html/
CMD ["apache2ctl","-D","FOREGROUND"]
