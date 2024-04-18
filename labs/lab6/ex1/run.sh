#!/bin/bash

docker run --rm --name l6e1-node -v ./serverjs:/opt/app -w "/opt/app" --network my_bridge -d node bash -c "npm install && node index.js"
docker run --rm --name networker --network my_bridge busybox sh -c "ping -c 10 l6e1-node"
# pingujemy po nazwie kontenera

# docker network inspect my_bridge
# w inspect w networks możemy sprawdzić DNS kontenera (pod jakimi adresami możemy się łączyć)
