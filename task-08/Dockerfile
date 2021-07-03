FROM debian:latest

RUN apt-get clean && apt-get update \
&& apt-get install -y \
   apache2 \
   php \
   libapache2-mod-php \
   mc

WORKDIR /var/www/html

ADD https://raw.githubusercontent.com/L-Eugene/itacademy-devops-files/master/01-demosite-php/index.php .

RUN chmod 775 /var/www/html/index.php

RUN rm /var/www/html/index.html

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND