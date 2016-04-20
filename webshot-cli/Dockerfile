FROM node:4

ADD build.sh /build.sh
RUN chmod +x /build.sh; sync; sleep 1; /build.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/webshot"]
