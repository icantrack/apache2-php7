FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y
ENV LANG=C.UTF-8
RUN apt-get install apache2 -y

RUN apt-get install software-properties-common python-software-properties -y
RUN add-apt-repository -y ppa:ondrej/php 
RUN apt-get update

RUN apt-get install -y php7.2 php7.2-cli php7.2-common
RUN apt search php7.2
RUN apt-get install -y php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip
CMD apachectl -DFOREGROUND

