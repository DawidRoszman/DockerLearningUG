#!/bin/bash

docker run --rm -v ./index.js:/opt/app/index.js --name "l2e1" -p 5050:8080 node:12 node /opt/app/index.js

# docker run --rm -v ./index.js:/opt/app/. --name "l2e1" -p 5050:8080 -it node:12 sh
# UWAGA: Trzeba podać nazwę pliku do którego mapujemy, bo inaczej index.js to będzie "app"