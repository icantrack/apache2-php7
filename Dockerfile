FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install apache2 && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt search php7
RUN sudo apt install -y php7.0-mysql

CMD apachectl -DFOREGROUND

