FROM debian
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y apache2 apache2-utils
RUN apt-get install -y mariadb-server
RUN apt-get install -y  php php-mysql
CMD tar -xcvf Joomla_3.9.13-Stable-Full_Package.tar.gz
RUN mkdir /home/joomla
WORKDIR /home/joomla
COPY ayuda.txt /home/joomla
EXPOSE 3306
EXPOSE 80
