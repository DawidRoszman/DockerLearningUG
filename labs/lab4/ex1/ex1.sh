#!/bin/bash

docker volume create nginx_data

docker run --name "l4e1" -v nginx_data:/usr/share/nginx/html -p 80:80 -d nginx
docker cp ./site/index.html l4e1:/usr/share/nginx/html/index.html

# Jak chcemy skopiować pliki do wolumenu, to kopiujemy je na kontener w miejsce gdzie wolumen jest podpięty