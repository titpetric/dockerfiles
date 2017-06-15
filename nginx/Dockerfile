FROM debian:stretch

MAINTAINER Tit Petric <tit.petric@monotek.net>

ARG GITVERSION=development
ENV GITVERSION ${GITVERSION}

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ 'Europe/Ljubljana'

COPY files/etc/apt/ /etc/apt/
COPY files/ /install/

# common, nginx, inc::stretch/lua

RUN	/install/pre-install/10_start.sh && \
	apt-get -y --force-yes install \
	rsync wget curl net-tools telnet dnsutils netcat realpath inotify-tools less supervisor libc-bin locales ssmtp screen mc make git ssh figlet smbclient sudo apt-transport-https ca-certificates gnupg2 dirmngr \
	nginx-extras \
	lua5.1 lua-nginx-redis lua-cjson luarocks && \
	/install/post-install/00_config.sh && \
	/install/post-install/01_locales.sh && \
	/install/post-install/01_tzdata.sh && \
	/install/post-install/10_test_lua.sh && \
	/install/post-install/30_luarocks.sh && \
	/install/post-install/50_test_nginx.sh && \
	/install/post-install/99_cleanup.sh

ENTRYPOINT ["/start.sh"]