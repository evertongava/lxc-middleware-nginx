FROM evertongava/core-alpine:3.18
LABEL maintainer="Everton Gava <evertongava@mabalus.com>"

RUN set -ex \
	&& apk add --update --no-cache nginx \
		&& mkdir -p \
		/srv/www \
		/var/log/nginx

WORKDIR /srv/www

COPY assets/etc/nginx.conf /etc/nginx/nginx.conf
COPY assets/start.sh /usr/bin/start.sh

RUN chown -R app:adm \
		/srv/www \
		/var/log/nginx

EXPOSE 80

CMD "start.sh"
