#!/bin/bash

docker network create "l3e3-network"
docker run -d --name "l3e3-node" -v "./server/":"/opt/app" --network l3e3-network -w /opt/app node bash -c "npm install && node index.js"
docker run -d --name "l3e3-nginx" -p 80:80 -p 443:443 --network l3e3-network nginx
docker exec l3e3-nginx bash -c "mkdir -p /var/cache/server && chown -R nginx:nginx /var/cache/server"
docker exec -it l3e3-nginx /bin/bash -c "apt update && apt install openssl -y"
docker exec -it l3e3-nginx /bin/bash -c  "cd /etc/nginx/ && openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj '/C=US/ST=New York/L=New York/O=Organization/OU=Department/CN=example.com'"
docker cp "./nginx/default.conf" l3e3-nginx:"/etc/nginx/conf.d/default.conf"
docker exec -it l3e3-nginx /bin/bash -c "nginx -s reload"

# 80 - http
# 443 - https
# mkdir -p <- żeby stworzyło katalogi pomiędzy jeśli nie istnieją
# p - parent (pomiędzy)

# chown -R <- rekursywnie nadaj uprawnienia
