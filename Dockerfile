FROM debian:wheezy
MAINTAINER hello@andreimanea.com

RUN apt-get update && apt-get install -y \
			php5-fpm \
			&& sed 's/;daemonize = yes/daemonize = no/' -i /etc/php5/fpm/php-fpm.conf

VOLUME /etc/php5

WORKDIR /root

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9000
