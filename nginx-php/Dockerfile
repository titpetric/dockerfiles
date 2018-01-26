FROM titpetric/nginx

MAINTAINER Tit Petric <tit.petric@monotek.net>

ARG GITVERSION=development
ENV GITVERSION ${GITVERSION}

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ 'Europe/Ljubljana'

COPY files/ /install/

# common, nginx, inc::stretch/lua, php-fpm, inc::stretch/php

RUN	/install/pre-install/10_start.sh && \
	apt-get -y --force-yes install \
	php-fpm php-mysql php-memcache php-memcached php-mbstring php-intl php-redis php-curl php-soap php-gd php-sqlite3 php-xml php-zip && \
	/install/post-install/00_config.sh && \
	/install/post-install/50_run_php-fpm.sh && \
	/install/post-install/99_cleanup.sh

ENTRYPOINT ["/start.sh"]