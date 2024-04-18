#!/bin/bash

docker build -t l5e3-fastapi:1.0.0 . --build-arg "PYTHON_VER=3.11.9"