#!/bin/bash

docker network create --driver bridge kolos_network
docker build -t kolos:1.0.0 ./server
docker run --name kolos --network kolos_network -p 5500:80 -v ./nginx:/etc/nginx/conf.d/ kolos:1.0.0
