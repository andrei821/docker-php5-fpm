docker-php5-fpm
===============

Dockerfile for php5-fpm version 5.4 built on Debian Wheezy

Instructions:

To start the containter you can choose between one of two modes:

1. Listen to IP
	
   - docker run -t -i -d --name=give_it_a_name -e LISTEN=0.0.0.0:9000 andrei821/docker-php5-fpm

2. Listen to socket (use -v /var/run/fpm/ to define a VOLUME that can be used to access fpm.socket file. Use docker --inspct container_name so that you can find volume location)
   
   - docker run -t -i -d -v /var/run/fpm/ --name=give_it_a_name -e LISTEN=/var/run/fpm/fpm.socket andrei821/docker-php5-fpm


Updates 19.Dec.2014
 - Added dotdeb repository
 - Installed multiple php5-modules (including php5-mongo)
