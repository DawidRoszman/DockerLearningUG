#!/bin/bash

docker run --rm --name "l3e1" -p 5050:80 -v "./site":"/usr/share/nginx/html" -d nginx
