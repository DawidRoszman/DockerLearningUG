#!/bin/bash

docker run --name l6e2-db -d --network my_network -e "MYSQL_ROOT_PASSWORD=password" mysql
sleep 15
docker run --name l6e2-web -d --network my_network l6e2-backend:1.0.0
docker run --name l6e2-nginx -d -p 8080:80 --network my_network -v ./nginx:/etc/nginx/conf.d/ nginx
