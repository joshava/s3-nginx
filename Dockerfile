FROM python:alpine

ARG S6_VERSION=v1.21.7.0

ADD https://github.com/just-containers/s6-overlay/releases/download/$S6_VERSION/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /

RUN apk add --no-cache nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    mkdir -p /cache

COPY root/ /

ENTRYPOINT ["/init"]
