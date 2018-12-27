FROM python:alpine

RUN apk add --no-cache nginx

COPY root/ /

RUN chmod +x /start.sh

CMD ["/start.sh"]
