#!/bin/bash

docker volume ls -q | while read -r volume; do
    data=$(docker volume inspect "$volume" | grep Mountpoint | awk '{print $2}' | tr -d '",')
    usage=$(df -h "$data" | awk '{print $5}' | tail -1 | sed 's/%//')
    echo "$volume: ${usage}%"
done

# docker system df