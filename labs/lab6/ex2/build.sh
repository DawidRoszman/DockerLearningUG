#!/bin/bash

docker build -f Dockerfile.manual -t l6e2-backend:1.0.0 . --build-arg SERVER_PORT=5500
