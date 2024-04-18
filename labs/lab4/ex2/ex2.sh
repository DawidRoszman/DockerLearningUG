#!/bin/bash

docker volume create nodejs_data
docker run --name "l4e2-node" -dit -v nodejs_data:/app -p 3000:3000 node bash -c "cd /app/serverjs && npm install && node index.js"
docker cp "/mnt/q/Studia/4th_semester/cloud-technologies/labs/files/serverjs" l4e2-node:/app
docker volume create all_volumes
# kontener z pierwszego zadania musi działać
docker run --rm -dit --name "l4e2-busybox" -v all_volumes:/app -v all_volumes:/usr/share/nginx/html -v nginx_data:/nginx_data -v nodejs_data:/nodejs_data busybox
docker exec l4e2-busybox sh -c "cp -r /nginx_data/ /usr/share/nginx/html && cp -r /nodejs_data/ /app"

# ważne: pamiętac o "-r w cp"
# cp: omitting directory '/nginx_data <- zapomniałeś o cp -r
