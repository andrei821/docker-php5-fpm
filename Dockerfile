FROM debian:wheezy
MAINTAINER hello@andreimanea.com

RUN apt-get update && apt-get install -y \
			php5-fpm \
			&& sed 's/;daemonize = yes/daemonize = no/' -i /etc/php5/fpm/php-fpm.conf \
			&& sed 's#listen = /var/run/php5-fpm.sock#listen = 127.0.0.1:9000#' -i /etc/php5/fpm/pool.d/www.conf 

VOLUME /etc/php5

EXPOSE 9000
CMD ["/usr/sbin/php5-fpm"]
