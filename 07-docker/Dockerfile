FROM debian:stable-20230725

RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php
COPY index.php /var/www/html/index.html
EXPOSE 80

CMD [ "apachectl", "-DFOREGROUND" ]