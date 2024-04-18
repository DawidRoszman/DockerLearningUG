#!/bin/bash
docker volume create nginx_data

docker volume create nodejs_data

docker volume create all_volumes

docker run --name nginx_zad4 -v nginx_data:/usr/share/nginx/html -d nginx
docker cp "$(pwd)/nginx/index.html" nginx_zad4:/usr/share/nginx/html/

docker run --name node_zad4  -d -v nodejs_data:/app node
docker cp "$(pwd)/app/" node_zad4:/app/

docker run --rm -v nginx_data:/from -v all_volumes:/to alpine ash -c "cd /from ; cp -a . /to"
docker run --rm -v nodejs_data:/from -v all_volumes:/to alpine ash -c "cd /from ; cp -a . /to"

echo "Podaj hasło do zaszyfrowania woluminu:"
read -s PASSWORD

COMMAND="apt-get update && apt-get install -y gpg && tar cvf /encrypted/all_volumes.tar /volume && echo $PASSWORD | gpg --batch --yes --passphrase-fd 0 -c /encrypted/all_volumes.tar"

docker run --rm -v all_volumes:/volume/ -v "$(pwd)/encrypted":/encrypted ubuntu bash -c "$COMMAND"

echo $PASSWORD | gpg --batch --yes --passphrase-fd 0 -o all_volumes.tar -d "$(pwd)/encrypted/all_volumes.tar.gpg"
