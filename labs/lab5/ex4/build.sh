#!/bin/bash

docker build -t l5e4 --build-arg PYTHON_VERSION=3 --build-arg PORT=5500 .