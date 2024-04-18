#!/bin/bash

# bridge jest domyślny
docker network create --driver bridge --subnet 192.168.1.0/24 --gateway 192.168.1.1 my_bridge

# docker network create --driver bridge --subnet 192.168.1.1/24 my_bridge_2 # NIE DZIAŁA!!
