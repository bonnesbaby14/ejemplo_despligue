FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get update
RUN apt-get -y install apache2-utils
RUN apt install -y tcl
WORKDIR /var/www/html
COPY index.html /var/www/html/index.html 
COPY main.js /var/www/html/main.js 
COPY styles.css /var/www/html/styles.css 
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]

