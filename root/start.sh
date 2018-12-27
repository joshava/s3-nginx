#!/bin/sh

sed -i "s/{DOMAIN}/$DOMAIN/g" /etc/nginx/conf.d/default.conf\

nginx -g "daemon off;"
