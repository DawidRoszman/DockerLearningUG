#!/bin/bash

docker run --rm --name "l2e2" -v ./server:/opt/app -p 5050:8080 node:14 sh -c "cd /opt/app && npm install && node /opt/app/index.js"
