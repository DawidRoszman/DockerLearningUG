#!/bin/bash

docker run --rm --name "l3e3-mongo" -p 27017:27017 -d mongo

docker run --rm --name "l3e3-node-16" -p 5050:8080 -v ./server:/opt/app node:16 sh -c "cd /opt/app && npm install && node /opt/app/index.mjs"