FROM percona:8.0

USER root

COPY build.sh /build.sh
RUN chmod +x /build.sh && sync && /build.sh

USER mysql