FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
WORKDIR /var/www/html
RUN rm -rf *
COPY index.html /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]