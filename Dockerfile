FROM python:alpine

ARG S6_VERSION=v1.21.7.0

WORKDIR /tmp

RUN wget -q https://github.com/just-containers/s6-overlay/releases/download/$S6_VERSION/s6-overlay-amd64.tar.gz && \
    tar xzf s6-overlay-amd64.tar.gz -C / && \
    rm s6-overlay-amd64.tar.gz

RUN apk add --no-cache nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    mkdir -p /cache

COPY root/ /

WORKDIR /

ENTRYPOINT ["/init"]
