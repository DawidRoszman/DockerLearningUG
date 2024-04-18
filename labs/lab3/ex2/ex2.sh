#!/bin/bash

PORT=$1
echo "$PORT"

docker run --name "l3e2" -e NGINX_PORT="$PORT" -p "$PORT":"$PORT" -v ./nginx/site/:/var/www/html -v "./nginx/nginx.conf":/etc/nginx/templates/default.conf.template -d nginx
